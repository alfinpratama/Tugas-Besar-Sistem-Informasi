-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2018 at 12:31 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbpenggajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `Kode_Verifikasi` int(50) NOT NULL,
  `Nama_Pegawai` varchar(100) NOT NULL,
  `Divisi_Pegawai` varchar(100) NOT NULL,
  `No_IndukSupervisor` varchar(100) NOT NULL,
  `Nama_Admin` varchar(100) NOT NULL,
  `No_IndukAdmin` int(100) NOT NULL,
  PRIMARY KEY (`No_IndukAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE IF NOT EXISTS `laporan` (
  `No_Laporan` int(100) NOT NULL,
  `No_IndukPeawai` varchar(100) NOT NULL,
  `Nama_Pegawai` varchar(100) NOT NULL,
  `Divisi_Pegawai` varchar(100) NOT NULL,
  `Bulan` date NOT NULL,
  PRIMARY KEY (`No_Laporan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `No_IndukPegawai` varchar(100) NOT NULL,
  `Nama_Pegawai` varchar(100) NOT NULL,
  `No_Rekening` int(11) NOT NULL,
  `Username_Pegawai` varchar(100) NOT NULL,
  `Alamat_Pegawai` varchar(100) NOT NULL,
  `Tanggal_LahirPegawai` date NOT NULL,
  `Divisi_Pegawai` varchar(100) NOT NULL,
  PRIMARY KEY (`No_IndukPegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penggajian`
--

CREATE TABLE IF NOT EXISTS `penggajian` (
  `Kode_Gaji` int(50) NOT NULL,
  `Nama_Pegawai` varchar(100) NOT NULL,
  `No_Rekening` int(11) NOT NULL,
  `Bulan` date NOT NULL,
  `Rincian` varchar(10000) NOT NULL,
  `Nominal` int(10) NOT NULL,
  PRIMARY KEY (`Kode_Gaji`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE IF NOT EXISTS `supervisor` (
  `No_IndukSupervisor` varchar(100) NOT NULL,
  `Nama_Supervisor` varchar(100) NOT NULL,
  `Username_Supervisor` varchar(100) NOT NULL,
  `Alamat_Supervisor` varchar(100) NOT NULL,
  `Tanggal_LahirSupervisor` date NOT NULL,
  PRIMARY KEY (`No_IndukSupervisor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `verifikasi`
--

CREATE TABLE IF NOT EXISTS `verifikasi` (
  `Kode_Verifikasi` int(50) NOT NULL,
  `Nama_Pegawai` varchar(100) NOT NULL,
  `No_IndukPegawai` varchar(100) NOT NULL,
  `Divisi_Pegawai` varchar(100) NOT NULL,
  `No_IndukSupervisor` varchar(100) NOT NULL,
  `Bulan` date NOT NULL,
  PRIMARY KEY (`Kode_Verifikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
