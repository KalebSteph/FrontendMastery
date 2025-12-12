"use client"

import { useState } from "react";
import "./admin.css";

export default function AdminPage() {
  const [rooms, setRooms] = useState([
    { id: 1, name: "Room 1", users: 8, capacity: 20, open: false },
    { id: 2, name: "Room 2", users: 8, capacity: 20, open: false },
    { id: 3, name: "Room 3", users: 8, capacity: 20, open: false },
  ]);

  const toggleRoomOpen = (id: number) => {
    setRooms(rooms.map((room) =>
      room.id === id ? { ...room, open: !room.open } : room
    ));
  };

  return (
    <div className="adminContainer">
      {/* Top Bar */}
      <div className="topBar" />

      {/* Title */}
      <h1 className="adminTitle">Administration Page</h1>

      <div className="adminContent">
        
        {/* LEFT SIDE BUTTONS */}
        <div className="leftButtons">
          <button className="bigButton">Reset Rooms</button>
          <button className="bigButton">Add Room</button>
        </div>

        {/* RIGHT SIDE ROOM LIST */}
        <div className="roomListContainer">
          <div className="roomListHeader">Rooms List</div>

          {rooms.map((room) => (
            <div key={room.id} className="roomRow">
              
              {/* NEW FLEXBOX HEADER FOR ALIGNMENT */}
              <div className="roomHeader">
                <div
                  className="roomName"
                  onClick={() => toggleRoomOpen(room.id)}
                >
                  {room.name}
                </div>

                <button className="trashButton">🗑️</button>
              </div>

              {/* ROOM STATUS DROPDOWN */}
              {room.open && (
                <div className="roomDetails">
                  <p className="statusText">{room.users} users</p>
                  <p className="statusText">
                    {room.users}/{room.capacity} Capacity
                  </p>
                </div>
              )}
            </div>
          ))}
        </div>
      </div>

      {/* Bottom Bar */}
      <div className="bottomBar">
        <img src="/images/logo.png" width={160} height={100} alt="logo" />
        <p className="helpText">Help</p>
      </div>
    </div>
  );
}
