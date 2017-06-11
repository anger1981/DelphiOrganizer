unit ORGANAIZER_SERVER_TLB;

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
// File generated on 14.06.2012 18:55:53 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Projects\Organaizer_MPUVKH\Server\111\ORGANAIZER_SERVER.tlb (1)
// LIBID: {14FEB418-667B-4E01-A49F-2ADCEA98D28A}
// LCID: 0
// Helpfile: 
// HelpString: ORGANAIZER_SERVER Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\Windows\system32\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
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
  ORGANAIZER_SERVERMajorVersion = 1;
  ORGANAIZER_SERVERMinorVersion = 0;

  LIBID_ORGANAIZER_SERVER: TGUID = '{14FEB418-667B-4E01-A49F-2ADCEA98D28A}';

  IID_IServer_Data: TGUID = '{17ECE273-D167-47FD-BA5A-1F8687B7EE58}';
  CLASS_Server_Data: TGUID = '{107CD906-6347-449F-A190-BB48BA0798FB}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IServer_Data = interface;
  IServer_DataDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Server_Data = IServer_Data;


// *********************************************************************//
// Interface: IServer_Data
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17ECE273-D167-47FD-BA5A-1F8687B7EE58}
// *********************************************************************//
  IServer_Data = interface(IAppServer)
    ['{17ECE273-D167-47FD-BA5A-1F8687B7EE58}']
  end;

// *********************************************************************//
// DispIntf:  IServer_DataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17ECE273-D167-47FD-BA5A-1F8687B7EE58}
// *********************************************************************//
  IServer_DataDisp = dispinterface
    ['{17ECE273-D167-47FD-BA5A-1F8687B7EE58}']
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
// The Class CoServer_Data provides a Create and CreateRemote method to          
// create instances of the default interface IServer_Data exposed by              
// the CoClass Server_Data. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServer_Data = class
    class function Create: IServer_Data;
    class function CreateRemote(const MachineName: string): IServer_Data;
  end;

implementation

uses ComObj;

class function CoServer_Data.Create: IServer_Data;
begin
  Result := CreateComObject(CLASS_Server_Data) as IServer_Data;
end;

class function CoServer_Data.CreateRemote(const MachineName: string): IServer_Data;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Server_Data) as IServer_Data;
end;

end.
