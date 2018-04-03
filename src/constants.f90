!-----------------------------------------------------------------------------
! FLUIDBOX: 3D Fluid Solver by FDM in Cartesian Geometry.
!
!     This code is developed for Simulation School at Kobe on 2008.06.09.
!-----------------------------------------------------------------------------
! constants.f90
!     2008.06.02: Created by Akira Kageyama. Copied from kindanb.
!-----------------------------------------------------------------------------

module constants      
!*****************************************************************************
! MODULE CONSTANTS                                         Numerical Constants
!*****************************************************************************
  implicit none

  ! << f90 constants >>
  integer, parameter ::  SP = kind(1.0)
  integer, parameter ::  DP = selected_real_kind(2*precision(1.0_SP))
  integer, parameter :: DPC = kind((1.0_DP,1.0_DP))

  ! << Mathematical constants >>
  real(DP),     parameter :: PI = 3.14159265358979323846264338_DP
  real(DP),     parameter :: TWOPI = PI*2
  complex(DPC), parameter :: Z0 = (0.0_DP,0.0_DP)
  complex(DPC), parameter :: ZI = (0.0_DP,1.0_DP)

  ! << Job karte >>
  integer, parameter      :: KARTE_FINE      =  0
  integer, parameter      :: KARTE_TIME_OUT  =  1
  integer, parameter      :: KARTE_LOOP_MAX  =  2
  integer, parameter      :: KARTE_OVERFLOW  =  3
  integer, parameter      :: KARTE_UNDERFLOW =  4

  ! << I/O files >>
  integer, parameter      :: FILE_NAMELIST     = 05
  integer, parameter      :: FILE_RESTART      = 80
  integer, parameter      :: FILE_STANDARD_OUT = 06
  integer, parameter      :: FILE_AVS_DATA     = 50
  integer, parameter      :: FILE_SLICEDATA    = 51

  ! << Grid Size >>
  integer, parameter      :: NX =  22
  integer, parameter      :: NY =  12
  integer, parameter      :: NZ =  12
  !- integer, parameter      :: NX = 152
  !- integer, parameter      :: NY =  52
  !- integer, parameter      :: NZ =  52

  ! << Box Size >>
  real(DP), parameter     :: XMIN = -1.5_DP
  real(DP), parameter     :: XMAX = +1.5_DP
  real(DP), parameter     :: YMIN = -0.5_DP
  real(DP), parameter     :: YMAX = +0.5_DP
  real(DP), parameter     :: ZMIN = -0.5_DP
  real(DP), parameter     :: ZMAX = +0.5_DP

  ! << Used for strings >>
  integer, parameter      :: TAG_STRING_LENGTH_MAX = 100

end module constants
