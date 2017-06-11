unit Organaizer_Server_TLB;

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
// File generated on 30.07.2012 9:47:58 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Projects\Organaizer_MPUVKH\Server_Internal_Free\Organaizer_Server.tlb (1)
// LIBID: {9197ECFC-7EB0-4A64-BDFA-52E0242EF4D9}
// LCID: 0
// Helpfile: 
// HelpString: Organaizer_Server Library
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
  Organaizer_ServerMajorVersion = 1;
  Organaizer_ServerMinorVersion = 0;

  LIBID_Organaizer_Server: TGUID = '{9197ECFC-7EB0-4A64-BDFA-52E0242EF4D9}';

  IID_IRemoteDM: TGUID = '{55D300D4-9F42-4655-B043-2E164C06EC7A}';
  CLASS_RemoteDM: TGUID = '{70C5BBB0-2E28-40AE-89B7-55DDCB747602}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRemoteDM = interface;
  IRemoteDMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  RemoteDM = IRemoteDM;


// *********************************************************************//
// Interface: IRemoteDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {55D300D4-9F42-4655-B043-2E164C06EC7A}
// *********************************************************************//
  IRemoteDM = interface(IAppServer)
    ['{55D300D4-9F42-4655-B043-2E164C06EC7A}']
  end;

// *********************************************************************//
// DispIntf:  IRemoteDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {55D300D4-9F42-4655-B043-2E164C06EC7A}
// *********************************************************************//
  IRemoteDMDisp = dispinterface
    ['{55D300D4-9F42-4655-B043-2E164C06EC7A}']
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
// The Class CoRemoteDM provides a Create and CreateRemote method to          
// create instances of the default interface IRemoteDM exposed by              
// the CoClass RemoteDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRemoteDM = class
    class function Create: IRemoteDM;
    class function CreateRemote(const MachineName: string): IRemoteDM;
  end;

implementation

uses ComObj;

class function CoRemoteDM.Create: IRemoteDM;
begin
  Result := CreateComObject(CLASS_RemoteDM) as IRemoteDM;
end;

class function CoRemoteDM.CreateRemote(const MachineName: string): IRemoteDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RemoteDM) as IRemoteDM;
end;

end.
