import Image from "next/image";
import "./login.css";

export default function LoginPage() {
  return (
    <div className="container">
      {/* Top Bar */}
      <div className="topBar" />

      {/* Main Content */}
      <div className="content">
        <h1>Welcome to Check-In Admin</h1>

        <button className="loginButton">Login</button>
      </div>

      {/* Bottom Bar */}
      <div className="bottomBar">
        <div className="logoWrapper">
          <Image
            src="/images/logo.png"
            alt="Check-In Monitor Logo"
            width={160}
            height={100}
          />
        </div>

        <p className="helpText">Help</p>
      </div>
    </div>
  );
}
