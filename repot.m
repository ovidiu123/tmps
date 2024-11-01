\documentclass[a4paper, 12pt]{article}
\usepackage{graphicx}
\usepackage{amsmath}
\usepackage{hyperref}

\title{Creational Design Patterns}
\author{Drumea Vasile}
\date{\today}

\begin{document}

\maketitle

\section{Objectives}
\begin{enumerate}
    \item Study and understand the Creational Design Patterns.
    \item Choose a domain, define its main classes/models/entities and choose the appropriate instantiation mechanisms.
    \item Use some creational design patterns for object instantiation in a sample project.
\end{enumerate}

\section{Theory}
In software engineering, the creational design patterns are general solutions that deal with object creation, trying to create objects in a manner suitable to the situation. The basic form of object creation could result in design problems or added complexity to the design. Creational design patterns solve this problem by optimizing, hiding, or controlling the object creation.

Some examples of this kind of design patterns are:
\begin{itemize}
    \item Singleton
    \item Builder
    \item Prototype
    \item Object Pooling
    \item Factory Method
    \item Abstract Factory
\end{itemize}

\section{Domain Area}
For this project, we chose a vehicle management system as the domain area. The main classes involved are:
\begin{itemize}
    \item \textbf{Vehicle}: A base class representing a generic vehicle.
    \item \textbf{Car}: A class that inherits from Vehicle.
    \item \textbf{Bike}: A class that inherits from Vehicle.
    \item \textbf{Truck}: A class that inherits from Vehicle.
\end{itemize}

\section{Implemented Design Patterns}
The following creational design patterns have been implemented in this project:
\begin{itemize}
    \item \textbf{Singleton Pattern}: Used in \texttt{config\_manager.py} to manage configuration settings.
    \item \textbf{Factory Method Pattern}: Implemented in \texttt{vehicle\_factory.py} to create different types of vehicles based on input.
    \item \textbf{Builder Pattern}: Used in \texttt{vehicle\_builder.py} to construct complex vehicle objects step by step.
    \item \textbf{Prototype Pattern}: Implemented in \texttt{vehicle\_prototype.py} to create new vehicles by copying existing ones.
\end{itemize}

\section{Implementation}
The implementation consists of several modules that interact with each other. Below are some snippets from the codebase.

\subsection{Config Manager (Singleton)}
\begin{verbatim}
class ConfigManager:
    _instance = None

    @staticmethod
    def get_instance():
        if ConfigManager._instance is None:
            ConfigManager._instance = ConfigManager()
        return ConfigManager._instance
\end{verbatim}

\subsection{Vehicle Factory (Factory Method)}
\begin{verbatim}
class VehicleFactory:
    def create_vehicle(self, vehicle_type):
        if vehicle_type == "Car":
            return Car()
        elif vehicle_type == "Bike":
            return Bike()
        elif vehicle_type == "Truck":
            return Truck()
\end{verbatim}

\subsection{Vehicle Builder}
\begin{verbatim}
class VehicleBuilder:
    def __init__(self):
        self.vehicle = Vehicle()

    def set_type(self, vehicle_type):
        self.vehicle.type = vehicle_type
\end{verbatim}

\section{Conclusions}
This project successfully demonstrates the implementation of various Creational Design Patterns. The vehicle management system allows for flexible and efficient creation of vehicle objects. By using these design patterns, the code remains clean and maintainable, which is essential for scalable software development.

\end{document}
