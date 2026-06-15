# Sceflow AI Sales Assistant

A multi-agent AI sales system built with n8n, PostgreSQL, OpenAI and Cal.com.

## Overview

This project automates the complete lead journey:

* AI Receptionist
* Lead Qualification
* Lead Scoring
* Meeting Booking

The system captures leads, qualifies them, scores them based on business criteria, and automatically books sales calls.

## Architecture

Website Chat Widget
→ Main Workflow
→ AI Receptionist
→ Lead Qualification Agent
→ Lead Scoring Agent
→ Booking Agent
→ Cal.com

## Features

* Persistent PostgreSQL memory
* Multi-agent architecture
* Lead qualification tracking
* Automated lead scoring
* Booking automation
* Conversation logging

## Tech Stack

* n8n
* PostgreSQL
* OpenAI GPT-4o-mini
* Cal.com

## Workflows

See the `/workflows` folder for exported n8n workflows.

## Current Status

Version 1.0

Completed:

* AI Receptionist
* Lead Qualification Agent
* Lead Scoring Agent
* Booking Agent

Planned:

* Nurture Agent
* Follow-up Agent
* Analytics Agent
