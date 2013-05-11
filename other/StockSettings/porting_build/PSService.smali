.class public Lcom/android/htcsettings/PSService;
.super Landroid/app/Service;
.source "PSService.java"


# static fields
.field private static final CHECKING_NETWORK:I = -0x7ffe0000

.field public static CurrentStatus:I = 0x0

.field private static Dis:Ljava/io/DataInputStream; = null

.field public static final DisabledIPT:Ljava/lang/String; = "com.htc.disable.ipt"

.field private static Dos:Ljava/io/DataOutputStream; = null

.field public static First_Get_PCSC_Intent:Ljava/lang/String; = null

.field public static IPTConnPass:Z = false

.field public static final IPTDisabled_Intent:Ljava/lang/String; = "com.htc.ipt.disabled"

.field public static final IPTEnabled_Intent:Ljava/lang/String; = "com.htc.ipt.enabled"

.field private static final IPT_CONNECTED:I = -0x7ffd0000

.field private static final IPT_DISCONNECTED:I = -0x7ffc0000

.field public static IPT_Fail_Notioncation:Ljava/lang/String; = null

.field public static IPT_Notioncation:Ljava/lang/String; = null

.field public static final ISEnabled_Intent:Ljava/lang/String; = "com.htc.is.enabled"

.field public static final Locate_Intent:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field private static final NATCOMPLETE:I = 0x20000

.field public static Notshow_notice:Z = false

.field public static final OpeningPS_Intent:Ljava/lang/String; = "com.htc.android.opening_IPT"

.field private static final PCNETWORK_CONNECTED:I = 0x30000

.field private static final PCNETWORK_DISCONNECTED:I = 0x40000

.field public static final PCSC_Intent:Ljava/lang/String; = "com.htc.intent.action.USB_CONNECT2PC"

.field public static PSEnabled:Z = false

.field public static final RUN_SMART_PCSC_Intent:Ljava/lang/String; = "com.htc.android.smartPCSC"

.field public static final SMART_PCSC_COMPLETE_Intent:Ljava/lang/String; = "com.htc.android.smartPCSC.complete"

.field public static final StartISFail_Intent:Ljava/lang/String; = "com.htc.android.startIS.Fail"

.field public static final StartPS_Intent:Ljava/lang/String; = "com.htc.android.start_IPT"

.field private static final Status_End:I = 0x9

.field private static final Status_HandShakeOK:I = 0x8

.field private static final Status_NATCOMPLETE:I = 0x5

.field private static final Status_NDISSetup:I = 0x4

.field private static final Status_NetworkChecking:I = 0x6

.field private static final Status_PCNetwork:I = 0x7

.field public static final StopPS_Intent:Ljava/lang/String; = "com.htc.android.stop_IPT"

.field private static final TAG:Ljava/lang/String; = "SmartNS_PSService"

.field public static USBPlugged:Z = false

.field public static final USB_Intent:Ljava/lang/String; = "com.htc.usb.change"

.field public static USB_Notioncation:Ljava/lang/String; = null

.field public static final USB_SWITCH_MTP_OFF:Ljava/lang/String; = "com.htc.android.stop_MTP"

.field public static final USB_SWITCH_MTP_ON:Ljava/lang/String; = "com.htc.android.start_MTP"

.field private static close:Z

.field public static defaultType:I

.field public static isDeviceNetworkConnected:Z

.field protected static mClient:Ljava/net/Socket;

.field private static mServer:Ljava/net/ServerSocket;

.field private static final mSyncLock:Ljava/lang/Object;

.field private static pause:Landroid/os/ConditionVariable;

.field public static reTryConn:I

.field public static runSmartPCSC:Z

.field public static smartNSChecked:Z

.field public static triggerFromIPT_UI:Z


# instance fields
.field private DBG:Z

.field ed:Landroid/content/SharedPreferences$Editor;

.field mContext:Landroid/content/Context;

.field private mService1:Lcom/htc/service/HtcHardwareManager;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const-string v0, "IPT_Notioncation"

    sput-object v0, Lcom/android/htcsettings/PSService;->IPT_Notioncation:Ljava/lang/String;

    .line 67
    const-string v0, "IPT_Fail_Notioncation"

    sput-object v0, Lcom/android/htcsettings/PSService;->IPT_Fail_Notioncation:Ljava/lang/String;

    .line 68
    const-string v0, "First_Get_PCSC_intent"

    sput-object v0, Lcom/android/htcsettings/PSService;->First_Get_PCSC_Intent:Ljava/lang/String;

    .line 69
    const-string v0, "USB_Notioncation"

    sput-object v0, Lcom/android/htcsettings/PSService;->USB_Notioncation:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/htcsettings/PSService;->pause:Landroid/os/ConditionVariable;

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/android/htcsettings/PSService;->mServer:Ljava/net/ServerSocket;

    .line 99
    sput-boolean v1, Lcom/android/htcsettings/PSService;->close:Z

    .line 100
    sput-boolean v1, Lcom/android/htcsettings/PSService;->Notshow_notice:Z

    .line 101
    sput-boolean v1, Lcom/android/htcsettings/PSService;->IPTConnPass:Z

    .line 102
    sput-boolean v1, Lcom/android/htcsettings/PSService;->USBPlugged:Z

    .line 103
    sput-boolean v1, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    .line 104
    sput-boolean v1, Lcom/android/htcsettings/PSService;->isDeviceNetworkConnected:Z

    .line 105
    sput-boolean v1, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    .line 106
    sput-boolean v1, Lcom/android/htcsettings/PSService;->smartNSChecked:Z

    .line 107
    sput-boolean v1, Lcom/android/htcsettings/PSService;->triggerFromIPT_UI:Z

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/htcsettings/PSService;->mSyncLock:Ljava/lang/Object;

    .line 114
    sput v1, Lcom/android/htcsettings/PSService;->reTryConn:I

    .line 115
    sput v1, Lcom/android/htcsettings/PSService;->defaultType:I

    .line 117
    const/4 v0, 0x4

    sput v0, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcsettings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    .line 39
    return-void
.end method

.method private CloseConn()V
    .locals 4

    .prologue
    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v2, "ps_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    .line 707
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v2, "smart_pcsc"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    .line 709
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SmartNS_PSService"

    const-string v2, "Close all socket related, force to jump out handshaking process, inform PCSC to switch to other status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_0
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "SmartNS_PSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Before closed Called, PSEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_1
    sget-boolean v1, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    if-eqz v1, :cond_2

    .line 713
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.ipt.disabled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/htcsettings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 714
    sget-boolean v1, Lcom/android/htcsettings/PSService;->IPTConnPass:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/htcsettings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 716
    :goto_0
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(0), Send: com.htc.ipt.disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    .line 721
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    .line 722
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/htcsettings/PSService;->IPTConnPass:Z

    .line 723
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ps_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 724
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ipt_connectpass"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 725
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "smart_pcsc"

    sget-boolean v3, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 726
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "trigger_from_ipt_ui"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 727
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/htcsettings/PSService;->close:Z

    .line 728
    const/4 v1, 0x4

    sput v1, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    .line 729
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.smartPCSC.complete"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/htcsettings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 731
    invoke-static {}, Lcom/android/htcsettings/SmartNSUtility;->isUsbConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 732
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/htcsettings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 733
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/htcsettings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 736
    :cond_3
    sget-object v1, Lcom/android/htcsettings/PSService;->Dis:Ljava/io/DataInputStream;

    if-eqz v1, :cond_4

    .line 737
    sget-object v1, Lcom/android/htcsettings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 738
    const/4 v1, 0x0

    sput-object v1, Lcom/android/htcsettings/PSService;->Dis:Ljava/io/DataInputStream;

    .line 739
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "SmartNS_PSService"

    const-string v2, "Dis.close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_4
    sget-object v1, Lcom/android/htcsettings/PSService;->Dos:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_5

    .line 742
    sget-object v1, Lcom/android/htcsettings/PSService;->Dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 743
    const/4 v1, 0x0

    sput-object v1, Lcom/android/htcsettings/PSService;->Dos:Ljava/io/DataOutputStream;

    .line 744
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "SmartNS_PSService"

    const-string v2, "Dos.close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_5
    sget-object v1, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v1, :cond_6

    .line 747
    sget-object v1, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 748
    const/4 v1, 0x0

    sput-object v1, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    .line 749
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "SmartNS_PSService"

    const-string v2, "mClient.close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_6
    sget-object v1, Lcom/android/htcsettings/PSService;->mServer:Ljava/net/ServerSocket;

    if-eqz v1, :cond_7

    .line 752
    sget-object v1, Lcom/android/htcsettings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 753
    const/4 v1, 0x0

    sput-object v1, Lcom/android/htcsettings/PSService;->mServer:Ljava/net/ServerSocket;

    .line 754
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "SmartNS_PSService"

    const-string v2, "mServer.close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_7
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "SmartNS_PSService"

    const-string v2, "Connection Closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_8
    invoke-virtual {p0}, Lcom/android/htcsettings/PSService;->stopSelf()V

    .line 758
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "SmartNS_PSService"

    const-string v2, "Stop Service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_9
    :goto_1
    return-void

    .line 715
    :cond_a
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/htcsettings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "SmartNS_PSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Connection fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static FailIPTNotification(Landroid/content/Context;Z)V
    .locals 13
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v12, 0x0

    .line 999
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail notificaiton:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const-string v9, "WirelessSettings"

    invoke-virtual {p0, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1004
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v9, "trigger_from_ipt_ui"

    invoke-interface {v7, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v9, "smart_pcsc"

    invoke-interface {v7, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1036
    :cond_1
    :goto_0
    return-void

    .line 1007
    :cond_2
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1008
    .local v5, notificationManager:Landroid/app/NotificationManager;
    const v2, 0x7f02015c

    .line 1009
    .local v2, id:I
    const v9, 0x7f0b05db

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1010
    .local v8, title:Ljava/lang/String;
    const v9, 0x7f0b05dd

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1012
    .local v4, message:Ljava/lang/String;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1013
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v9, Lcom/android/htcsettings/PSService;->IPT_Fail_Notioncation:Ljava/lang/String;

    invoke-interface {v1, v9, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1015
    if-eqz p1, :cond_4

    invoke-static {p0, v12}, Lcom/android/htcsettings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 1019
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 1020
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1022
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "com.android.stocksettings"

    const-string v10, "com.android.stocksettings.StockSettings"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1024
    const/high16 v9, 0x400

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1025
    invoke-static {p0, v12, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1026
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1027
    .local v0, FIPTNotification:Landroid/app/Notification;
    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 1028
    const/4 v9, 0x2

    iput v9, v0, Landroid/app/Notification;->flags:I

    .line 1029
    iput-object v8, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1030
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroid/app/Notification;->when:J

    .line 1031
    invoke-virtual {v0, p0, v8, v4, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1032
    invoke-virtual {v5, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1016
    .end local v0           #FIPTNotification:Landroid/app/Notification;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #pendingIntent:Landroid/app/PendingIntent;
    :cond_4
    invoke-static {}, Lcom/android/htcsettings/SmartNSUtility;->isUsbConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/android/htcsettings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    goto :goto_1

    .line 1034
    :cond_5
    invoke-virtual {v5, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private GetPCNetwork()Z
    .locals 15

    .prologue
    const/high16 v14, 0x1800

    const/16 v13, 0x8

    const/16 v12, 0x9

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 793
    :try_start_0
    sget-object v9, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_0

    .line 794
    new-instance v9, Ljava/io/DataInputStream;

    sget-object v10, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v9, Lcom/android/htcsettings/PSService;->Dis:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :cond_0
    :goto_0
    sget-object v9, Lcom/android/htcsettings/PSService;->Dis:Ljava/io/DataInputStream;

    if-eqz v9, :cond_12

    sget-object v9, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_12

    .line 803
    iget-boolean v9, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "SmartNS_PSService"

    const-string v10, "GetPCNetwork Start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_1
    :try_start_1
    sget-object v9, Lcom/android/htcsettings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 807
    .local v3, i:I
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/htcsettings/PSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 808
    .local v0, cmg:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 810
    .local v5, netInfo:Landroid/net/NetworkInfo;
    if-nez v5, :cond_4

    .line 811
    const-string v9, "SmartNS_PSService"

    const-string v10, "device no network"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/htcsettings/PSService;->isDeviceNetworkConnected:Z

    .line 819
    :goto_1
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const-string v10, "WirelessSettings"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 820
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v9, "smart_pcsc"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    .line 822
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "device network:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/htcsettings/PSService;->isDeviceNetworkConnected:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " smartPCSC:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/high16 v9, 0x3

    if-ne v3, v9, :cond_a

    .line 826
    iget-boolean v9, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "SmartNS_PSService"

    const-string v10, "PCNetwork Connected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_2
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "pc_network"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 830
    sget-boolean v9, Lcom/android/htcsettings/PSService;->isDeviceNetworkConnected:Z

    if-eqz v9, :cond_8

    sget-boolean v9, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    if-eqz v9, :cond_8

    .line 832
    const/16 v9, 0x9

    sput v9, Lcom/android/htcsettings/PSService;->CurrentStatus:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 924
    .end local v0           #cmg:Landroid/net/ConnectivityManager;
    .end local v3           #i:I
    .end local v5           #netInfo:Landroid/net/NetworkInfo;
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_3
    :goto_2
    return v7

    .line 796
    :catch_0
    move-exception v2

    .line 798
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 815
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #cmg:Landroid/net/ConnectivityManager;
    .restart local v3       #i:I
    .restart local v5       #netInfo:Landroid/net/NetworkInfo;
    :cond_4
    :try_start_2
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "device is connected:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/htcsettings/PSService;->isDeviceNetworkConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 907
    .end local v0           #cmg:Landroid/net/ConnectivityManager;
    .end local v3           #i:I
    .end local v5           #netInfo:Landroid/net/NetworkInfo;
    :catch_1
    move-exception v2

    .line 908
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 910
    sget-boolean v9, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    if-ne v9, v7, :cond_5

    sget-boolean v9, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    if-nez v9, :cond_5

    .line 911
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.android.htcsettings"

    const-string v11, "com.android.htcsettings.PSActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 912
    .local v4, mintent:Landroid/content/Intent;
    invoke-virtual {v4, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 913
    const-string v9, "ps_dialog_code"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 914
    invoke-virtual {p0, v4}, Lcom/android/htcsettings/PSService;->startActivity(Landroid/content/Intent;)V

    .line 917
    .end local v4           #mintent:Landroid/content/Intent;
    :cond_5
    iget-boolean v7, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v7, :cond_6

    const-string v7, "SmartNS_PSService"

    const-string v9, "GetPCNetwork fail: "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_6
    sput v12, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    .line 919
    iget-boolean v7, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v7, :cond_7

    const-string v7, "SmartNS_PSService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GetPCNetwork: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v7, v8

    .line 920
    goto :goto_2

    .line 837
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #cmg:Landroid/net/ConnectivityManager;
    .restart local v3       #i:I
    .restart local v5       #netInfo:Landroid/net/NetworkInfo;
    .restart local v6       #sp:Landroid/content/SharedPreferences;
    :cond_8
    :try_start_3
    sget-boolean v9, Lcom/android/htcsettings/HtcFeatureList;->FEATURE_SUPPORT_IPT:Z

    if-eqz v9, :cond_9

    .line 838
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    .line 839
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "smart_pcsc"

    sget-boolean v11, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 840
    const/16 v9, 0x8

    sput v9, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    goto/16 :goto_2

    .line 844
    :cond_9
    const/16 v9, 0x9

    sput v9, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    goto/16 :goto_2

    .line 852
    :cond_a
    const/high16 v9, 0x4

    if-ne v3, v9, :cond_f

    .line 854
    iget-boolean v9, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v9, :cond_b

    const-string v9, "SmartNS_PSService"

    const-string v10, "PCNetwork Disconnected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_b
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "pc_network"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 859
    sget-boolean v9, Lcom/android/htcsettings/PSService;->isDeviceNetworkConnected:Z

    if-eqz v9, :cond_d

    sget-boolean v9, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    if-eqz v9, :cond_d

    .line 861
    const/16 v9, 0x9

    sput v9, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    .line 862
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->stopIPT()V

    .line 864
    const/4 v1, 0x0

    .line 865
    .local v1, count:I
    :goto_3
    sget-boolean v9, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    if-eqz v9, :cond_c

    if-ge v1, v13, :cond_c

    .line 867
    sget-object v9, Lcom/android/htcsettings/PSService;->pause:Landroid/os/ConditionVariable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v10, v11}, Landroid/os/ConditionVariable;->block(J)Z

    .line 868
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "retry: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 872
    :cond_c
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.htc.android.startIS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/android/htcsettings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 874
    .end local v1           #count:I
    :cond_d
    sget-boolean v9, Lcom/android/htcsettings/PSService;->isDeviceNetworkConnected:Z

    if-nez v9, :cond_e

    sget-boolean v9, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    if-eqz v9, :cond_e

    .line 876
    const/16 v9, 0x9

    sput v9, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    goto/16 :goto_2

    .line 878
    :cond_e
    sget-boolean v9, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    if-nez v9, :cond_3

    .line 879
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    .line 880
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "smart_pcsc"

    sget-boolean v11, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 881
    const/16 v9, 0x8

    sput v9, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    goto/16 :goto_2

    .line 892
    :cond_f
    sget-boolean v9, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    if-ne v9, v7, :cond_10

    sget-boolean v9, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    if-nez v9, :cond_10

    .line 893
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.android.htcsettings"

    const-string v11, "com.android.htcsettings.PSActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 894
    .restart local v4       #mintent:Landroid/content/Intent;
    const/high16 v9, 0x1800

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 895
    const-string v9, "ps_dialog_code"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 896
    invoke-virtual {p0, v4}, Lcom/android/htcsettings/PSService;->startActivity(Landroid/content/Intent;)V

    .line 898
    .end local v4           #mintent:Landroid/content/Intent;
    :cond_10
    const/16 v9, 0x9

    sput v9, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    .line 900
    iget-boolean v9, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v9, :cond_11

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PC return wrong value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_11
    move v7, v8

    .line 902
    goto/16 :goto_2

    .line 923
    .end local v0           #cmg:Landroid/net/ConnectivityManager;
    .end local v3           #i:I
    .end local v5           #netInfo:Landroid/net/NetworkInfo;
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_12
    iget-boolean v7, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v7, :cond_13

    const-string v7, "SmartNS_PSService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DataInputStream = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/htcsettings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; Client = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move v7, v8

    .line 924
    goto/16 :goto_2
.end method

.method private InitSocket()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 573
    const/16 v0, 0x1770

    .line 574
    .local v0, SERVICE_PORT_NUMBER:I
    const/16 v6, 0x7530

    .line 577
    .local v6, soTimeOut:I
    :try_start_0
    sget-object v7, Lcom/android/htcsettings/PSService;->mServer:Ljava/net/ServerSocket;

    if-nez v7, :cond_4

    new-instance v7, Ljava/net/ServerSocket;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v8}, Ljava/net/ServerSocket;-><init>(II)V

    sput-object v7, Lcom/android/htcsettings/PSService;->mServer:Ljava/net/ServerSocket;

    .line 580
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "SmartNS_PSService"

    const-string v8, "Server established"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_1
    sget-object v7, Lcom/android/htcsettings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v7, v6}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 583
    sget-object v7, Lcom/android/htcsettings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v7

    sput-object v7, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    .line 584
    iget-boolean v7, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "SmartNS_PSService"

    const-string v8, "Client accepted"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_2
    sget-object v7, Lcom/android/htcsettings/PSService;->mServer:Ljava/net/ServerSocket;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 588
    new-instance v7, Ljava/io/DataInputStream;

    sget-object v8, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v7, Lcom/android/htcsettings/PSService;->Dis:Ljava/io/DataInputStream;

    .line 591
    new-instance v7, Ljava/io/DataOutputStream;

    sget-object v8, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v7, Lcom/android/htcsettings/PSService;->Dos:Ljava/io/DataOutputStream;

    .line 592
    iget-boolean v7, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "SmartNS_PSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB connection established, Server: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/htcsettings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v9}, Ljava/net/ServerSocket;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Client: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DIS:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/htcsettings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " DOS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/htcsettings/PSService;->Dos:Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_3
    :goto_1
    return-void

    .line 578
    :cond_4
    sget-object v7, Lcom/android/htcsettings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/net/ServerSocket;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v8}, Ljava/net/ServerSocket;-><init>(II)V

    sput-object v7, Lcom/android/htcsettings/PSService;->mServer:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 596
    :catch_0
    move-exception v3

    .line 597
    .local v3, e:Ljava/lang/Exception;
    iget-boolean v7, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "SmartNS_PSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InitSocket: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/htcsettings/PSService;->reTryConn:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_5
    sget-boolean v7, Lcom/android/htcsettings/PSService;->USBPlugged:Z

    if-nez v7, :cond_6

    .line 599
    iget-boolean v7, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "SmartNS_PSService"

    const-string v8, "InitSocket exception, but USB was unplugged, return"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 603
    :cond_6
    sget v7, Lcom/android/htcsettings/PSService;->reTryConn:I

    if-gt v7, v10, :cond_7

    sget-boolean v7, Lcom/android/htcsettings/PSService;->close:Z

    if-eq v7, v10, :cond_7

    sget v7, Lcom/android/htcsettings/PSService;->reTryConn:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/htcsettings/PSService;->reTryConn:I

    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->InitSocket()V

    goto :goto_1

    .line 607
    :cond_7
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/htcsettings/PSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 608
    .local v1, cmg:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 610
    .local v5, netInfo:Landroid/net/NetworkInfo;
    if-nez v5, :cond_9

    .line 611
    const-string v7, "SmartNS_PSService"

    const-string v8, "device no network"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    sput-boolean v11, Lcom/android/htcsettings/PSService;->isDeviceNetworkConnected:Z

    .line 619
    :goto_2
    sget-boolean v7, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    if-ne v7, v10, :cond_8

    sget-boolean v7, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    if-nez v7, :cond_8

    .line 620
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.android.htcsettings"

    const-string v9, "com.android.htcsettings.PSActivity"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 621
    .local v4, mintent:Landroid/content/Intent;
    const/high16 v7, 0x1800

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 622
    const-string v7, "ps_dialog_code"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    invoke-virtual {p0, v4}, Lcom/android/htcsettings/PSService;->startActivity(Landroid/content/Intent;)V

    .line 627
    .end local v4           #mintent:Landroid/content/Intent;
    :cond_8
    iget-object v7, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const-string v8, "internet_sharing"

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "is_type"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 664
    .local v2, defaultType:I
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->SetIPT0()V

    goto/16 :goto_1

    .line 615
    .end local v2           #defaultType:I
    :cond_9
    const-string v7, "SmartNS_PSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "device is connected:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    sput-boolean v10, Lcom/android/htcsettings/PSService;->isDeviceNetworkConnected:Z

    goto :goto_2
.end method

.method private RecvNATComplete(Ljava/io/DataInputStream;)Z
    .locals 6
    .parameter "dis"

    .prologue
    const/4 v2, 0x0

    .line 513
    if-eqz p1, :cond_5

    sget-object v3, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v3, :cond_5

    .line 514
    iget-boolean v3, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartNS_PSService"

    const-string v4, "RecvNATComplete Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 519
    .local v1, i:I
    const/high16 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 520
    iget-boolean v3, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "SmartNS_PSService"

    const-string v4, "RecvNATComplete pass"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_1
    const/4 v3, 0x6

    sput v3, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    .line 522
    const/4 v2, 0x1

    .line 536
    .end local v1           #i:I
    :cond_2
    :goto_0
    return v2

    .line 525
    .restart local v1       #i:I
    :cond_3
    iget-boolean v3, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "SmartNS_PSService"

    const-string v4, "RecvNATComplete fail: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_4
    const/4 v3, 0x5

    sput v3, Lcom/android/htcsettings/PSService;->CurrentStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v3, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "SmartNS_PSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecvNATComplete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iget-boolean v3, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    sget-object v3, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v3, :cond_2

    const-string v3, "SmartNS_PSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataInputStream = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; Client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SendHandShakeOK(Ljava/io/DataOutputStream;)Z
    .locals 7
    .parameter "dos"

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x0

    .line 930
    iget-boolean v3, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartNS_PSService"

    const-string v4, "SendHandShakeOK Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    if-eqz p1, :cond_4

    sget-object v3, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v3, :cond_4

    .line 934
    :try_start_0
    iget-object v3, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v4, "pc_network"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 935
    .local v0, connected:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 936
    const/high16 v3, -0x7ffd

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 940
    :goto_0
    iget-boolean v3, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "SmartNS_PSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendHandShakeOK write"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/high16 v5, -0x7ffe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_1
    const/4 v2, 0x1

    .end local v0           #connected:Ljava/lang/Boolean;
    :goto_1
    return v2

    .line 938
    .restart local v0       #connected:Ljava/lang/Boolean;
    :cond_2
    const/high16 v3, -0x7ffc

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 942
    .end local v0           #connected:Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 943
    .local v1, e:Ljava/lang/Exception;
    iget-boolean v3, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "SmartNS_PSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendHandShakeOK:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_3
    sput v6, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    goto :goto_1

    .line 949
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    iget-boolean v3, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "SmartNS_PSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataOnputStream = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; Client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_5
    sput v6, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    goto :goto_1
.end method

.method private SendStartNetworkChecking(Ljava/io/DataOutputStream;)Z
    .locals 6
    .parameter "dos"

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 768
    iget-boolean v2, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SmartNS_PSService"

    const-string v3, "SendNetworkChecking Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_0
    if-eqz p1, :cond_3

    sget-object v2, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v2, :cond_3

    .line 771
    const/high16 v2, -0x7ffe

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 773
    iget-boolean v2, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "SmartNS_PSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendNetworkChecking write"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, -0x7ffe

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_1
    const/4 v2, 0x7

    sput v2, Lcom/android/htcsettings/PSService;->CurrentStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "SmartNS_PSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendNetworkChecking:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_2
    sput v5, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    goto :goto_0

    .line 782
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget-boolean v2, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "SmartNS_PSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataOnputStream = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Client = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/htcsettings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_4
    sput v5, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    goto :goto_0
.end method

.method private SetIPT0()V
    .locals 1

    .prologue
    .line 680
    new-instance v0, Lcom/android/htcsettings/PSService$2;

    invoke-direct {v0, p0}, Lcom/android/htcsettings/PSService$2;-><init>(Lcom/android/htcsettings/PSService;)V

    invoke-virtual {v0}, Lcom/android/htcsettings/PSService$2;->start()V

    .line 701
    return-void
.end method

.method public static SetIPTNotification(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v11, 0x0

    .line 959
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 960
    .local v5, notificationManager:Landroid/app/NotificationManager;
    const v2, 0x7f02015b

    .line 961
    .local v2, id:I
    const v9, 0x7f0b05db

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 962
    .local v8, title:Ljava/lang/String;
    const v9, 0x7f0b0088

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 964
    .local v4, message:Ljava/lang/String;
    const-string v9, "WirelessSettings"

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 965
    .local v7, sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 967
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v9, Lcom/android/htcsettings/PSService;->IPT_Notioncation:Ljava/lang/String;

    invoke-interface {v1, v9, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 969
    if-eqz p1, :cond_1

    invoke-static {p0, v11}, Lcom/android/htcsettings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 974
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 975
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 978
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "com.android.htcsettings"

    const-string v10, "com.android.htcsettings.Settings$TetherSettingsActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 980
    const/high16 v9, 0x400

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 981
    invoke-static {p0, v11, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 983
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 984
    .local v0, IPTNotification:Landroid/app/Notification;
    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 985
    const/4 v9, 0x2

    iput v9, v0, Landroid/app/Notification;->flags:I

    .line 986
    iput-object v8, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 987
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroid/app/Notification;->when:J

    .line 988
    invoke-virtual {v0, p0, v8, v4, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 989
    invoke-virtual {v5, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 990
    const v9, 0x7f0b040d

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7d0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 995
    .end local v0           #IPTNotification:Landroid/app/Notification;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #pendingIntent:Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 970
    :cond_1
    invoke-static {}, Lcom/android/htcsettings/SmartNSUtility;->isUsbConnected()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/android/htcsettings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    goto :goto_0

    .line 993
    :cond_2
    invoke-virtual {v5, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private SetIPdata()Z
    .locals 8

    .prologue
    const/16 v7, 0x7e

    .line 541
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 542
    .local v4, rd:Ljava/util/Random;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "192.168.99."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit16 v6, v6, 0x80

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, ip:Ljava/lang/String;
    const-string v3, "255.255.255.0"

    .line 545
    .local v3, mask:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "192.168.99."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, DNS:Ljava/lang/String;
    move-object v1, v0

    .line 548
    .local v1, gateway:Ljava/lang/String;
    const-string v5, "net.usb0.ps.ip"

    invoke-static {v5, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v5, "net.usb0.ps.mask"

    invoke-static {v5, v3}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v5, "net.usb0.ps.gw"

    invoke-static {v5, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v5, "net.usb0.ps.dns"

    invoke-static {v5, v0}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-boolean v5, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SmartNS_PSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set IP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "net.usb0.ps.ip"

    invoke-static {v7}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    iget-boolean v5, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "SmartNS_PSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set Mask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "net.usb0.ps.mask"

    invoke-static {v7}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_1
    iget-boolean v5, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "SmartNS_PSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set Gateway: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "net.usb0.ps.gw"

    invoke-static {v7}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_2
    iget-boolean v5, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "SmartNS_PSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set DNS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "net.usb0.ps.dns"

    invoke-static {v7}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_3
    const/4 v5, 0x1

    return v5
.end method

.method private SetNDISData()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 420
    const-string v1, "SmartNS_PSService"

    const-string v2, "NDIS flow run..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sput v5, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    .line 422
    sput-boolean v4, Lcom/android/htcsettings/PSService;->IPTConnPass:Z

    .line 424
    const-string v1, "WirelessSettings"

    invoke-virtual {p0, v1, v4}, Lcom/android/htcsettings/PSService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    .line 425
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    .line 426
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ipt_connectpass"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    sput-boolean v4, Lcom/android/htcsettings/PSService;->close:Z

    .line 429
    sput v4, Lcom/android/htcsettings/PSService;->reTryConn:I

    .line 430
    :cond_0
    sget-boolean v1, Lcom/android/htcsettings/PSService;->IPTConnPass:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/htcsettings/PSService;->close:Z

    if-nez v1, :cond_b

    .line 431
    sget v1, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    if-ne v1, v5, :cond_5

    .line 435
    :try_start_0
    invoke-static {}, Lcom/android/htcsettings/SmartNSUtility;->isUsbConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 436
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "SmartNS_PSService"

    const-string v2, "When SetNDIS data, USB was unplugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/htcsettings/PSService;->close:Z

    .line 508
    :cond_2
    :goto_0
    return-void

    .line 440
    :cond_3
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->SetIPdata()Z

    .line 441
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/service/HtcHardwareManager;->UsbMiscControl_IPT(I)I

    move-result v1

    if-nez v1, :cond_c

    .line 442
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(1) Pass"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_4
    const/4 v1, 0x5

    sput v1, Lcom/android/htcsettings/PSService;->CurrentStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 453
    :cond_5
    :goto_1
    sget v1, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    if-ne v1, v6, :cond_6

    .line 454
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->InitSocket()V

    .line 455
    sget-object v1, Lcom/android/htcsettings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Lcom/android/htcsettings/PSService;->RecvNATComplete(Ljava/io/DataInputStream;)Z

    .line 458
    :cond_6
    sget v1, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 459
    sget-object v1, Lcom/android/htcsettings/PSService;->Dos:Ljava/io/DataOutputStream;

    invoke-direct {p0, v1}, Lcom/android/htcsettings/PSService;->SendStartNetworkChecking(Ljava/io/DataOutputStream;)Z

    .line 462
    :cond_7
    sget v1, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 464
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->GetPCNetwork()Z

    .line 468
    :cond_8
    sget v1, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    .line 469
    sget-object v1, Lcom/android/htcsettings/PSService;->Dos:Ljava/io/DataOutputStream;

    invoke-direct {p0, v1}, Lcom/android/htcsettings/PSService;->SendHandShakeOK(Ljava/io/DataOutputStream;)Z

    .line 472
    :try_start_1
    sget-boolean v1, Lcom/android/htcsettings/PSService;->USBPlugged:Z

    if-nez v1, :cond_e

    .line 473
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "SmartNS_PSService"

    const-string v2, "When SetNDIS data, USB was unplugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_9
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/htcsettings/PSService;->close:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    sput v6, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    .line 496
    .end local v0           #e:Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "smart_pcsc"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 497
    invoke-virtual {p0}, Lcom/android/htcsettings/PSService;->stopSelf()V

    .line 500
    :cond_a
    sget v1, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->stopIPT()V

    .line 507
    :cond_b
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "SmartNS_PSService"

    const-string v2, "NDIS flow end..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    :cond_c
    :try_start_2
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_d

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(1) Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_d
    const/4 v1, 0x4

    sput v1, Lcom/android/htcsettings/PSService;->CurrentStatus:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 448
    :catch_1
    move-exception v0

    .line 449
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 450
    sput v5, Lcom/android/htcsettings/PSService;->CurrentStatus:I

    goto :goto_1

    .line 478
    .end local v0           #e:Ljava/lang/Exception;
    :cond_e
    :try_start_3
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/service/HtcHardwareManager;->UsbMiscControl_IPT(I)I

    move-result v1

    if-nez v1, :cond_10

    .line 479
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(2) Pass"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_f
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/htcsettings/PSService;->IPTConnPass:Z

    .line 481
    iget-object v1, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ipt_connectpass"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 482
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.ipt.enabled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/htcsettings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/htcsettings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    goto :goto_2

    .line 487
    :cond_10
    iget-boolean v1, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v1, :cond_11

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(2) Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_11
    const/4 v1, 0x5

    sput v1, Lcom/android/htcsettings/PSService;->CurrentStatus:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public static SetUSBNotification(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v11, 0x0

    return-void
    .line 1039
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1040
    .local v5, notificationManager:Landroid/app/NotificationManager;
    const v2, 0x7f020160

    .line 1041
    .local v2, id:I
    const v9, 0x7f0b05e9

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1042
    .local v8, title:Ljava/lang/String;
    const v9, 0x7f0b05ea

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1044
    .local v4, message:Ljava/lang/String;
    const-string v9, "WirelessSettings"

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1045
    .local v7, sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1047
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v9, Lcom/android/htcsettings/PSService;->USB_Notioncation:Ljava/lang/String;

    invoke-interface {v1, v9, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1051
    if-eqz p1, :cond_0

    .line 1052
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1055
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "com.android.htcsettings"

    const-string v10, "com.android.htcsettings.Settings$TetherSettingsActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1057
    const/high16 v9, 0x400

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1058
    invoke-static {p0, v11, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1060
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1061
    .local v0, Notification:Landroid/app/Notification;
    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 1062
    const/4 v9, 0x2

    iput v9, v0, Landroid/app/Notification;->flags:I

    .line 1063
    iput-object v8, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1064
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroid/app/Notification;->when:J

    .line 1065
    invoke-virtual {v0, p0, v8, v4, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1066
    invoke-virtual {v5, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1071
    .end local v0           #Notification:Landroid/app/Notification;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #pendingIntent:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 1069
    :cond_0
    invoke-virtual {v5, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/htcsettings/PSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->SetNDISData()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htcsettings/PSService;)Lcom/htc/service/HtcHardwareManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/htcsettings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htcsettings/PSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->CloseConn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htcsettings/PSService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    return v0
.end method

.method private stopIPT()V
    .locals 3

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmartNS_PSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive Stop IPT, Current PSEnabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_0
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->SetIPT0()V

    .line 1088
    invoke-virtual {p0}, Lcom/android/htcsettings/PSService;->stopSelf()V

    .line 1089
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1079
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .parameter "mIntent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, action:Ljava/lang/String;
    iput-object p0, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    .line 142
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 143
    .local v7, notify:Landroid/app/Notification;
    const/16 v9, 0x2b67

    invoke-virtual {p0, v9, v7}, Lcom/android/htcsettings/PSService;->startForeground(ILandroid/app/Notification;)V

    .line 145
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/htcsettings/TetherSettings;->readCustomizationData(Landroid/content/Context;)V

    .line 146
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const-string v10, "htchardware"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/service/HtcHardwareManager;

    iput-object v9, p0, Lcom/android/htcsettings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    .line 150
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const-string v10, "WirelessSettings"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    .line 151
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v10, "ps_enabled"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    .line 152
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v10, "ipt_connectpass"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/htcsettings/PSService;->IPTConnPass:Z

    .line 153
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.ats.usbui.DISABLE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 156
    const-string v9, "UIDisable"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 157
    .local v8, runATS:Z
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "runATS"

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Run ATS:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v8           #runATS:Z
    :cond_0
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "tethering_blocked"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v1, 0x1

    .line 163
    .local v1, blockFromThreeLM:Z
    :goto_0
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v10, "runATS"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v1, :cond_4

    .line 165
    :cond_1
    if-eqz v1, :cond_3

    .line 166
    const-string v9, "SmartNS_PSService"

    const-string v10, "block from 3LM"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_1
    invoke-virtual {p0}, Lcom/android/htcsettings/PSService;->stopSelf()V

    .line 171
    const/4 v9, 0x3

    .line 413
    :goto_2
    return v9

    .line 161
    .end local v1           #blockFromThreeLM:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 168
    .restart local v1       #blockFromThreeLM:Z
    :cond_3
    const-string v9, "SmartNS_PSService"

    const-string v10, "run ATS return"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 177
    sget-boolean v9, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    if-eqz v9, :cond_5

    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->SetIPT0()V

    .line 178
    :cond_5
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 179
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 181
    iget-boolean v9, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "SmartNS_PSService"

    const-string v10, "User quick boot, set the correct notifications"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_6
    invoke-virtual {p0}, Lcom/android/htcsettings/PSService;->stopSelf()V

    .line 183
    const/4 v9, 0x3

    goto :goto_2

    .line 191
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.android.stop_IPT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 192
    iget-boolean v9, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v9, :cond_8

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receive Stop IPT, Current PSEnabled= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_8
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->SetIPT0()V

    .line 194
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 195
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 196
    invoke-virtual {p0}, Lcom/android/htcsettings/PSService;->stopSelf()V

    .line 197
    const/4 v9, 0x3

    goto :goto_2

    .line 201
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.android.startIS.Fail"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 202
    iget-boolean v9, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v9, :cond_a

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receive Start IS fail, Current PSEnabled= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_a
    sget-boolean v9, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    if-eqz v9, :cond_b

    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->SetIPT0()V

    .line 204
    :cond_b
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 205
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 208
    invoke-virtual {p0}, Lcom/android/htcsettings/PSService;->stopSelf()V

    .line 209
    const/4 v9, 0x3

    goto/16 :goto_2

    .line 213
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.is.enabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 214
    iget-boolean v9, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v9, :cond_d

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receive Enable IS, Current PSEnabled= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_d
    sget-boolean v9, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    if-eqz v9, :cond_e

    .line 216
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    .line 217
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "ps_enabled"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->SetIPT0()V

    .line 220
    :cond_e
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 221
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 224
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.htc.ipt.disabled"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/htcsettings/PSService;->stopSelf()V

    .line 226
    const/4 v9, 0x3

    goto/16 :goto_2

    .line 232
    :cond_f
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 233
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    sget-object v10, Lcom/android/htcsettings/PSService;->IPT_Notioncation:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 234
    .local v5, notification:Z
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    sget-object v10, Lcom/android/htcsettings/PSService;->IPT_Fail_Notioncation:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 235
    .local v4, notificaiton_fail:Z
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    sget-object v10, Lcom/android/htcsettings/PSService;->USB_Notioncation:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 238
    .local v6, notification_usb:Z
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/android/htcsettings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 239
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/android/htcsettings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 240
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/android/htcsettings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 242
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notification:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail notification:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "usb notification:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/android/htcsettings/PSService;->stopSelf()V

    .line 247
    const/4 v9, 0x3

    goto/16 :goto_2

    .line 251
    .end local v4           #notificaiton_fail:Z
    .end local v5           #notification:Z
    .end local v6           #notification_usb:Z
    :cond_10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.android.start_IPT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 254
    :cond_11
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 255
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 259
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v10, "usb_tethering_auto_enable"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 261
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v10, "has_spcsc"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/htcsettings/PSService;->smartNSChecked:Z

    .line 262
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "usb_tethering_auto_enable"

    sget-boolean v11, Lcom/android/htcsettings/PSService;->smartNSChecked:Z

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    sget-boolean v9, Lcom/android/htcsettings/PSService;->smartNSChecked:Z

    if-eqz v9, :cond_15

    .line 266
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "sns_type"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "sns_position"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    :goto_3
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v10, "sns_type"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/htcsettings/PSService;->defaultType:I

    .line 282
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " defaultType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/htcsettings/PSService;->defaultType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {}, Lcom/android/htcsettings/SmartNSUtility;->isUsbConnected()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 286
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/htcsettings/PSService;->USBPlugged:Z

    .line 290
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    sget-object v10, Lcom/android/htcsettings/PSService;->First_Get_PCSC_Intent:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 292
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 293
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    sget-object v10, Lcom/android/htcsettings/PSService;->First_Get_PCSC_Intent:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 295
    :cond_12
    iget-boolean v9, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v9, :cond_13

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USB Plugged, Set USBPlugged=  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/htcsettings/PSService;->USBPlugged:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "PSenabled:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_13
    sget v9, Lcom/android/htcsettings/PSService;->defaultType:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1a

    sget v9, Lcom/android/htcsettings/PSService;->defaultType:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1a

    .line 325
    sget-boolean v9, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    const/4 v10, 0x1

    if-eq v9, v10, :cond_14

    sget-boolean v9, Lcom/android/htcsettings/PSService;->smartNSChecked:Z

    if-nez v9, :cond_1a

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 327
    :cond_14
    invoke-virtual {p0}, Lcom/android/htcsettings/PSService;->stopSelf()V

    .line 328
    const/4 v9, 0x3

    goto/16 :goto_2

    .line 271
    :cond_15
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "sns_type"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 272
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "sns_position"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_3

    .line 277
    :cond_16
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v10, "usb_tethering_auto_enable"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/htcsettings/PSService;->smartNSChecked:Z

    goto/16 :goto_3

    .line 300
    :cond_17
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 302
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 303
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    sget-object v10, Lcom/android/htcsettings/PSService;->First_Get_PCSC_Intent:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    :cond_18
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/htcsettings/PSService;->USBPlugged:Z

    .line 306
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->SetIPT0()V

    .line 308
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 309
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 311
    invoke-virtual {p0}, Lcom/android/htcsettings/PSService;->stopSelf()V

    .line 315
    iget-boolean v9, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v9, :cond_19

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USB Unplugged, Set PSEnabled= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " disable MTP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_19
    const/4 v9, 0x3

    goto/16 :goto_2

    .line 332
    :cond_1a
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    .line 333
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "ps_enabled"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.android.start_IPT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 338
    sget v9, Lcom/android/htcsettings/PSService;->defaultType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_22

    .line 339
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v10, "trigger_from_ipt_ui"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/htcsettings/PSService;->triggerFromIPT_UI:Z

    .line 342
    :goto_4
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "triggerFromIPT_UI:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/htcsettings/PSService;->triggerFromIPT_UI:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 346
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/htcsettings/PSService;->triggerFromIPT_UI:Z

    .line 349
    :cond_1c
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "triggerFromIPT_UI:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/htcsettings/PSService;->triggerFromIPT_UI:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget v9, Lcom/android/htcsettings/PSService;->defaultType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    .line 354
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "smart_pcsc"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    .line 356
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.htc.android.smartPCSC"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/android/htcsettings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 358
    :cond_1d
    iget-boolean v9, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v9, :cond_1e

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PSEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1e
    sget-boolean v9, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    if-eqz v9, :cond_1f

    sget-boolean v9, Lcom/android/htcsettings/PSService;->runSmartPCSC:Z

    if-nez v9, :cond_1f

    .line 362
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.htc.android.opening_IPT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/android/htcsettings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    :cond_1f
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v10, "notshow_notice"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/htcsettings/PSService;->Notshow_notice:Z

    .line 370
    sget-boolean v9, Lcom/android/htcsettings/PSService;->PSEnabled:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_21

    .line 374
    :try_start_0
    sget-boolean v9, Lcom/android/htcsettings/PSService;->triggerFromIPT_UI:Z

    if-eqz v9, :cond_20

    .line 376
    sget-boolean v9, Lcom/android/htcsettings/PSService;->Notshow_notice:Z

    if-nez v9, :cond_20

    .line 378
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.android.htcsettings"

    const-string v11, "com.android.htcsettings.PSActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 379
    .local v3, mintent:Landroid/content/Intent;
    const/high16 v9, 0x1800

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 380
    const-string v9, "ps_dialog_code"

    const/4 v10, 0x3

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 385
    .end local v3           #mintent:Landroid/content/Intent;
    :cond_20
    new-instance v9, Lcom/android/htcsettings/PSService$1;

    invoke-direct {v9, p0}, Lcom/android/htcsettings/PSService$1;-><init>(Lcom/android/htcsettings/PSService;)V

    invoke-virtual {v9}, Lcom/android/htcsettings/PSService$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_21
    :goto_5
    const/4 v9, 0x3

    goto/16 :goto_2

    .line 341
    :cond_22
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/htcsettings/PSService;->triggerFromIPT_UI:Z

    goto/16 :goto_4

    .line 395
    :catch_0
    move-exception v2

    .line 396
    .local v2, e:Ljava/lang/Exception;
    iget-boolean v9, p0, Lcom/android/htcsettings/PSService;->DBG:Z

    if-eqz v9, :cond_23

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "thread exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_23
    invoke-direct {p0}, Lcom/android/htcsettings/PSService;->SetIPT0()V

    .line 398
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 399
    iget-object v9, p0, Lcom/android/htcsettings/PSService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/htcsettings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    goto :goto_5
.end method
