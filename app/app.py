from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

def get_environment_info():
    """Get environment information"""
    environment = os.getenv('ENVIRONMENT', 'development')
    flask_env = os.getenv('FLASK_ENV', 'development')
    
    return {
        'environment': environment,
        'flask_env': flask_env,
        'is_production': environment == 'production',
        'is_test': environment == 'test',
        'debug': flask_env == 'development'
    }

@app.route('/')
def home():
    """Professional home page with styled HTML"""
    env_info = get_environment_info()
    return render_template('index.html', env_info=env_info)

@app.route('/api')
def api():
    """API endpoint for JSON response"""
    env_info = get_environment_info()
    return jsonify({
        "message": "Hello, Team!",
        "engineer": "Jasir Ahamed Here - Senior DevOps Engineer",
        "status": "running",
        "environment": env_info['environment'],
        "domain": "app-test.codeopssolutions.com" if env_info['is_test'] else "codeopssolutions.com"
    })

@app.route('/health')
def health():
    """Health check endpoint"""
    env_info = get_environment_info()
    return jsonify({
        "status": "healthy",
        "environment": env_info['environment'],
        "timestamp": os.getenv('TIMESTAMP', 'unknown')
    })

@app.route('/version')
def version():
    """Version endpoint"""
    env_info = get_environment_info()
    return jsonify({
        "app": "devops-app",
        "version": "1.0.0",
        "environment": env_info['environment'],
        "flask_env": env_info['flask_env'],
        "engineer": "Jasir - Senior DevOps Engineer",
        "domain": "app-test.codeopssolutions.com" if env_info['is_test'] else "codeopssolutions.com"
    })

@app.route('/env')
def environment():
    """Environment information endpoint"""
    env_info = get_environment_info()
    return jsonify(env_info)

if __name__ == '__main__':
    port = int(os.getenv('PORT', 5000))
    debug_mode = os.getenv('FLASK_ENV', 'production') == 'development'
    app.run(host='0.0.0.0', port=port, debug=debug_mode)