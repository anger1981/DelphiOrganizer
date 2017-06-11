unit ORGANAIZER_SRV_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 14.06.2012 18:06:38 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Projects\Organaizer_MPUVKH\Server\ORGANAIZER_SRV.tlb (1)
// LIBID: {96366047-C076-4DE0-B1B3-0FEDB9F4A638}
// LCID: 0
// Helpfile: 
// HelpString: ORGANAIZER_SRV Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
//   (2) v1.0 Midas, (C:\Windows\system32\midas.dll)
//   (3) v4.0 StdVCL, (C:\Windows\system32\stdvcl40.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  ORGANAIZER_SRVMajorVersion = 1;
  ORGANAIZER_SRVMinorVersion = 0;

  LIBID_ORGANAIZER_SRV: TGUID = '{96366047-C076-4DE0-B1B3-0FEDB9F4A638}';

  IID_IRDM: TGUID = '{B49C9926-C0C5-4678-ABBB-AB27090A762F}';
  CLASS_Server_DM: TGUID = '{3A7603AC-EEAB-4D7A-85AE-5C65CC660B9F}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRDM = interface;
  IRDMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Server_DM = IRDM;


// *********************************************************************//
// Interface: IRDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B49C9926-C0C5-4678-ABBB-AB27090A762F}
// *********************************************************************//
  IRDM = interface(IAppServer)
    ['{B49C9926-C0C5-4678-ABBB-AB27090A762F}']
  end;

// *********************************************************************//
// DispIntf:  IRDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B49C9926-C0C5-4678-ABBB-AB27090A762F}
// *********************************************************************//
  IRDMDisp = dispinterface
    ['{B49C9926-C0C5-4678-ABBB-AB27090A762F}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoServer_DM provides a Create and CreateRemote method to          
// create instances of the default interface IRDM exposed by              
// the CoClass Server_DM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServer_DM = class
    class function Create: IRDM;
    class function CreateRemote(const MachineName: string): IRDM;
  end;

implementation

uses ComObj;

class function CoServer_DM.Create: IRDM;
begin
  Result := CreateComObject(CLASS_Server_DM) as IRDM;
end;

class function CoServer_DM.CreateRemote(const MachineName: string): IRDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Server_DM) as IRDM;
end;

end.
