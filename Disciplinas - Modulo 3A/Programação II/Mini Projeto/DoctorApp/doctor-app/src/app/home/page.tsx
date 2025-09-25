import React from "react";
import Link from "next/link";
export default function Home(){
    return (
        <>
            <h1>Home</h1>
            <div>
                <Link href="/doctor/create">Create new Doctor</Link> <br />
                <Link href="/doctor/list">Get all Doctors</Link> <br />
                <Link href="/pacient/create">Create new Pacient</Link> <br />
                <Link href="/appointment/create">Create new Appointment</Link> <br />
                <Link href="/prescription/create">Create new Prescription</Link> <br />
                <Link href="/prescription/upload">Upload a Prescription</Link> <br /><br />
                <Link href="/fake">Access FakeApi</Link> <br />
            </div>
        </>
    );
}