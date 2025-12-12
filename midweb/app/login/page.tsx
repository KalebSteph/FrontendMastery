"use client"

import { useRouter } from "next/navigation";
import "./login.css";

export default function LoginPage() {
  const router = useRouter();

  return (
    <div className="container">
      <div className="topBar" />

      <div className="content">
        <h1>Welcome to Check-In Admin</h1>

        <button
          className="loginButton"
          onClick={() => router.push("/admin")}
        >
          Login
        </button>
      </div>

      <div className="bottomBar">
        <div className="logoWrapper">
          <img src="/images/logo.png" width={160} height={100} alt="logo" />
        </div>

        <p className="helpText">Help</p>
      </div>
    </div>
  );
}
