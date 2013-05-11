.class public Lcom/android/server/NotificationManagerService;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/NotificationManagerService$ToastRecord;,
        Lcom/android/server/NotificationManagerService$NotificationRecord;,
        Lcom/android/server/NotificationManagerService$Injector;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DBG:Z = false

.field private static final DB_VERSION:I = 0x1

.field private static final DEFAULT_STREAM_TYPE:I = 0x5

.field private static final DEFAULT_VIBRATE_PATTERN:[J = null

.field private static final DEVICE_SUPPORT_CHARMIND:Z = false

.field private static final DEVICE_SUPPORT_JOGBALL:Z = false

.field private static final DEVICE_SUPPORT_MULTILED:Z = true

.field private static final DEVICE_SUPPORT_SHARELED:Z = false

.field private static final DUAL_COLOR:I = 0xc8c800

.field private static final DUAL_COLOR_AMBER:I = 0xc80000

.field private static final DUAL_COLOR_GREEN:I = 0xc800

.field private static final DUAL_OFF_IGNORE:I = -0x1

.field private static final DUAL_OFF_NOP:I = 0x0

.field private static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field private static final ENABLE_BLOCKED_TOASTS:Z = true

.field private static final FLASH_MODE_DUAL_BLINK:I = 0x5

.field private static final FLASH_MODE_FORCE_UPDATE_VALUE:I = 0xff

.field private static final FLASH_MODE_LONG_BLINK:I = 0x4

.field private static final FLASH_MODE_OFF:I = 0x0

.field private static final FLASH_MODE_ON:I = 0x1

.field private static final FLASH_MODE_SHORT_BLINK:I = 0x2

.field private static final FLASH_MODE_SHORT_BLINK_DELAY_1SEC:I = 0x3

.field private static final JUNK_SCORE:I = -0x3e8

.field private static final LED_FLASH_DELAY:J = 0x493e0L

.field private static final LED_FLASH_MINUTE:I = 0x5

.field private static final LONG_DELAY:I = 0xdac

.field private static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field private static final MESSAGE_LED_FLASH_TIMEOUT:I = 0x3

.field private static final MESSAGE_TIMEOUT:I = 0x2

.field private static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final SCORE_DISPLAY_THRESHOLD:I = -0x14

.field private static final SCORE_ONGOING_HIGHER:Z = false

.field private static final SHORT_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_BODY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field final INTENT_ACTION_ADD:I

.field final INTENT_ACTION_NONE:I

.field final INTENT_ACTION_UPDATE:I

.field final mAm:Landroid/app/IActivityManager;

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mAudioService:Landroid/media/IAudioService;

.field private mBatteryCharging:Z

.field private mBatteryFull:Z

.field private mBatteryHealth:I

.field private mBatteryLow:Z

.field private mBatteryStatus:I

.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCharmIndLight:Lcom/android/server/LightsService$Light;

.field private mCharmNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mCharms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDisabledNotifications:I

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mJogNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mJogballLight:Lcom/android/server/LightsService$Light;

.field private mJogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLightsService:Lcom/android/server/LightsService;

.field private mMultiLedLight:Lcom/android/server/LightsService$Light;

.field private mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field private mNotificationLight:Lcom/android/server/LightsService$Light;

.field private final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseEnabled:Z

.field private mPolicyFile:Lcom/android/internal/os/AtomicFile;

.field private mScreenOn:Z

.field private mShareLedLight:Lcom/android/server/LightsService$Light;

.field private mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mStatusBar:Lcom/android/server/StatusBarManagerService;

.field private mSystemReady:Z

.field private mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    .locals 8
    .parameter "context"
    .parameter "statusBar"
    .parameter "lights"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 734
    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    .line 122
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 150
    iput-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    .line 151
    iput-boolean v7, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 163
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    .line 168
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    .line 217
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/NotificationManagerService;->INTENT_ACTION_NONE:I

    .line 218
    iput v7, p0, Lcom/android/server/NotificationManagerService;->INTENT_ACTION_UPDATE:I

    .line 219
    iput v6, p0, Lcom/android/server/NotificationManagerService;->INTENT_ACTION_ADD:I

    .line 225
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    .line 475
    new-instance v5, Lcom/android/server/NotificationManagerService$1;

    invoke-direct {v5, p0}, Lcom/android/server/NotificationManagerService$1;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    .line 582
    new-instance v5, Lcom/android/server/NotificationManagerService$2;

    invoke-direct {v5, p0}, Lcom/android/server/NotificationManagerService$2;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 735
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    .line 736
    iput-object p3, p0, Lcom/android/server/NotificationManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 737
    const-string v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 738
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 739
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 740
    new-instance v5, Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    .line 742
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->loadBlockDb()V

    .line 744
    iput-object p2, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    .line 745
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-virtual {p2, v5}, Lcom/android/server/StatusBarManagerService;->setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V

    .line 747
    const/4 v5, 0x4

    invoke-virtual {p3, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    .line 748
    const/4 v5, 0x5

    invoke-virtual {p3, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 750
    const/16 v5, 0x8

    invoke-virtual {p3, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    .line 751
    const/16 v5, 0xa

    invoke-virtual {p3, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mJogballLight:Lcom/android/server/LightsService$Light;

    .line 752
    const/16 v5, 0x17

    invoke-virtual {p3, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mCharmIndLight:Lcom/android/server/LightsService$Light;

    .line 756
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 757
    .local v3, resources:Landroid/content/res/Resources;
    const v5, 0x1060063

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    .line 759
    const v5, 0x10e001a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 761
    const v5, 0x10e001b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 768
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 770
    const/high16 v5, 0x4

    iput v5, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    .line 774
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 776
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    const-string v5, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    const-string v5, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 780
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 781
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 784
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 785
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 786
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 787
    .local v2, pkgFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 788
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 789
    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 790
    const-string v5, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 791
    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 792
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 793
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 794
    .local v4, sdFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 796
    new-instance v1, Lcom/android/server/NotificationManagerService$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-direct {v1, p0, v5}, Lcom/android/server/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    .line 797
    .local v1, observer:Lcom/android/server/NotificationManagerService$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$SettingsObserver;->observe()V

    .line 798
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-static {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFlashLedDuringCharging()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/NotificationManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->updateLightsLocked(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mJogNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mCharmNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/NotificationManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->updateLights(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NotificationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/NotificationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/NotificationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryHealth:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/NotificationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryHealth:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/NotificationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/NotificationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryFull:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryFull:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateBatteryLight()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method private areNotificationsEnabledForPackageInt(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkg"

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 330
    .local v0, enabled:Z
    :goto_0
    return v0

    .line 326
    .end local v0           #enabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private broadcastIntent(IILjava/lang/String;Landroid/app/Notification;)V
    .locals 7
    .parameter "notiType"
    .parameter "id"
    .parameter "pkg"
    .parameter "notification"

    .prologue
    .line 1026
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v4}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1028
    :cond_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1

    .line 1029
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System not ready yet. Abort broadcasting for notify type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_1
    :goto_0
    return-void

    .line 1033
    :cond_2
    const/4 v0, 0x0

    .line 1035
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_4

    .line 1036
    const-string v0, "com.htc.intent.action.NOTIFICATION_UPDATE"

    .line 1051
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1052
    .local v1, callerId:J
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "id"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1054
    const-string v4, "pkg"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    if-eqz p4, :cond_3

    .line 1057
    const-string v4, "notification"

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1060
    :cond_3
    const/high16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1061
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1062
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1063
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1

    .line 1064
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1037
    .end local v1           #callerId:J
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v4, 0x1

    if-ne p1, v4, :cond_5

    .line 1038
    const-string v0, "com.htc.intent.action.NOTIFICATION_ADD"

    goto :goto_1

    .line 1046
    :cond_5
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1

    .line 1047
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unkown notiType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 8
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "mustHaveFlags"
    .parameter "mustNotHaveFlags"
    .parameter "sendDelete"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    .line 1568
    const/16 v3, 0xabf

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1571
    const/4 v1, -0x1

    .line 1572
    .local v1, notiType:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1573
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1574
    .local v0, index:I
    if-ltz v0, :cond_3

    .line 1575
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1577
    .local v2, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    .line 1578
    monitor-exit v4

    .line 1604
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_0
    return-void

    .line 1580
    .restart local v2       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_0
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/2addr v3, p5

    if-eqz v3, :cond_1

    .line 1581
    monitor-exit v4

    goto :goto_0

    .line 1596
    .end local v0           #index:I
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1584
    .restart local v0       #index:I
    .restart local v2       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1586
    invoke-direct {p0, v2, p6}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 1588
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFlashLedDuringCharging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1589
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v5, 0x3

    iget-object v6, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1590
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->updateLightsLocked(Z)V

    .line 1592
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    .line 1593
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V

    .line 1596
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    .locals 8
    .parameter "r"
    .parameter "sendDelete"

    .prologue
    const/4 v7, 0x0

    .line 1462
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 1463
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelNotificationLocked pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_0
    if-eqz p2, :cond_1

    .line 1467
    iget-object v4, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_1

    .line 1469
    :try_start_0
    iget-object v4, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1479
    :cond_1
    :goto_0
    iget-object v4, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-eqz v4, :cond_2

    .line 1480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1482
    .local v1, identity:J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v5, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1485
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1487
    iput-object v7, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1491
    .end local v1           #identity:J
    :cond_2
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_4

    .line 1492
    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1493
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1495
    .restart local v1       #identity:J
    :try_start_2
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v4}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    .line 1496
    .local v3, player:Landroid/media/IRingtonePlayer;
    if-eqz v3, :cond_3

    .line 1497
    invoke-interface {v3}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1501
    .end local v3           #player:Landroid/media/IRingtonePlayer;
    :cond_3
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1506
    .end local v1           #identity:J
    :cond_4
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_5

    .line 1507
    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1510
    .restart local v1       #identity:J
    :try_start_3
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1513
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1518
    .end local v1           #identity:J
    :cond_5
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1519
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_6

    .line 1520
    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1523
    :cond_6
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1524
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mJogNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_7

    .line 1525
    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mJogNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1530
    :cond_7
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1531
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mCharmNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_8

    .line 1532
    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mCharmNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1535
    :cond_8
    return-void

    .line 1470
    :catch_0
    move-exception v0

    .line 1473
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled PendingIntent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1485
    .end local v0           #ex:Landroid/app/PendingIntent$CanceledException;
    .restart local v1       #identity:J
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1501
    :catchall_1
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1513
    :catchall_2
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1499
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private cancelToastLocked(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 924
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 926
    .local v1, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :goto_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 934
    iget v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 935
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 939
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V

    .line 941
    :cond_0
    return-void

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 1082
    if-ge p0, p1, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .locals 4
    .parameter "record"

    .prologue
    .line 954
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 955
    :try_start_0
    iget-object v1, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-direct {p0, v1, v3}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .line 956
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 957
    invoke-direct {p0, v0}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V

    .line 959
    :cond_0
    monitor-exit v2

    .line 960
    return-void

    .line 959
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "baseContext"
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, c:Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 366
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 378
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 380
    .local v2, r:Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 382
    :goto_1
    return-object v3

    .line 367
    .end local v2           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 368
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .line 369
    goto :goto_0

    .line 371
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    goto :goto_0

    .line 381
    .restart local v2       #r:Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .line 382
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "<name unknown>"

    goto :goto_1
.end method

.method private indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 2018
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 2019
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2020
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 2021
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2022
    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    if-nez p2, :cond_1

    .line 2023
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->tag:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2020
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2027
    :cond_1
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->tag:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2031
    :cond_2
    iget v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    if-ne v4, p3, :cond_0

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2035
    .end local v0           #i:I
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .locals 6
    .parameter "pkg"
    .parameter "callback"

    .prologue
    .line 965
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 966
    .local v0, cbak:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 967
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 968
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 969
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 970
    .local v4, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 974
    .end local v1           #i:I
    .end local v4           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :goto_1
    return v1

    .line 968
    .restart local v1       #i:I
    .restart local v4       #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    .end local v4           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private isFlashLedDuringCharging()Z
    .locals 2

    .prologue
    .line 2011
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepProcessAliveLocked(I)V
    .locals 8
    .parameter "pid"

    .prologue
    .line 980
    const/4 v4, 0x0

    .line 981
    .local v4, toastCount:I
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 982
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 983
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 984
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 985
    .local v3, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget v5, v3, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    if-ne v5, p1, :cond_0

    .line 986
    add-int/lit8 v4, v4, 0x1

    .line 983
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 990
    .end local v3           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v6, v7, p1, v5}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :goto_2
    return-void

    .line 990
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 991
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private loadBlockDb()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 237
    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v8

    .line 238
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    if-nez v7, :cond_3

    .line 239
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, dir:Ljava/io/File;
    new-instance v7, Lcom/android/internal/os/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "notification_policy.xml"

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    .line 242
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    const/4 v2, 0x0

    .line 246
    .local v2, infile:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 247
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 248
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 252
    const/4 v6, 0x1

    .line 253
    .local v6, version:I
    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v11, :cond_5

    .line 254
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, tag:Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 256
    const-string v7, "notification-policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 257
    const/4 v7, 0x0

    const-string v9, "version"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 258
    :cond_1
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 259
    :cond_2
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v11, :cond_0

    .line 260
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 261
    const-string v7, "package"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 262
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v3, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 270
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #version:I
    :catch_0
    move-exception v7

    .line 279
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 282
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #infile:Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    return-void

    .line 263
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #infile:Ljava/io/FileInputStream;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #type:I
    .restart local v6       #version:I
    :cond_4
    :try_start_3
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    goto :goto_0

    .line 272
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #version:I
    :catch_1
    move-exception v1

    .line 273
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v7, "NotificationService"

    const-string v9, "Unable to read blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 279
    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 282
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #infile:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 274
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #infile:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 275
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v7, "NotificationService"

    const-string v9, "Unable to parse blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 279
    :try_start_7
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 276
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .line 277
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    const-string v7, "NotificationService"

    const-string v9, "Unable to parse blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 279
    :try_start_9
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_1
    move-exception v7

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #type:I
    .restart local v6       #version:I
    :cond_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;Z)V
    .locals 5
    .parameter "r"
    .parameter "immediate"

    .prologue
    .line 945
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 946
    .local v2, m:Landroid/os/Message;
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    .line 947
    .local v0, delay:J
    :goto_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 948
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 949
    return-void

    .line 946
    .end local v0           #delay:J
    :cond_0
    iget v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0xdac

    :goto_1
    int-to-long v0, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x7d0

    goto :goto_1
.end method

.method private sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "notification"
    .parameter "packageName"

    .prologue
    .line 1443
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 1444
    .local v1, manager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1459
    :goto_0
    return-void

    .line 1448
    :cond_0
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1450
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1451
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1452
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 1453
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1454
    .local v2, tickerText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1455
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private showNextToastLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 898
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 899
    .local v2, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :goto_0
    if-eqz v2, :cond_0

    .line 902
    :try_start_0
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    .line 903
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :cond_0
    return-void

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 910
    .local v1, index:I
    if-ltz v1, :cond_1

    .line 911
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 913
    :cond_1
    iget v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 914
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 915
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    .restart local v2       #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    goto :goto_0

    .line 917
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateBatteryLight()V
    .locals 7

    .prologue
    const/high16 v6, 0xc8

    const/16 v5, 0xff

    const/4 v2, 0x1

    const v4, 0xc8c800

    const/4 v3, 0x0

    .line 1852
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryHealth:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-eqz v0, :cond_1

    .line 1853
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBatteryHealth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/NotificationManagerService;->mBatteryHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    const-string v0, "NotificationService"

    const-string v1, "**********show Battery Overheat indicator!! "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, v4, v5, v3, v3}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1857
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    const/4 v1, 0x5

    invoke-virtual {v0, v4, v1, v3, v3}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1883
    :cond_0
    :goto_0
    return-void

    .line 1859
    :cond_1
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-eqz v0, :cond_2

    .line 1860
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBatteryHealth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/NotificationManagerService;->mBatteryHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const-string v0, "NotificationService"

    const-string v1, "**********show Battery Fault indicator!! "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, v4, v5, v3, v3}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1863
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    const/4 v1, 0x5

    invoke-virtual {v0, v4, v1, v3, v3}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1865
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-nez v0, :cond_3

    .line 1866
    const-string v0, "NotificationService"

    const-string v1, "Battery Low, No Charging"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, v4, v5, v3, v3}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1868
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    const/4 v1, 0x2

    invoke-virtual {v0, v6, v1, v3, v3}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1869
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-eqz v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, v4, v5, v3, v3}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1872
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    if-eqz v0, :cond_4

    .line 1873
    const-string v0, "NotificationService"

    const-string v1, "Battery Low, Charging"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, v6, v2, v3, v3}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1875
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryFull:Z

    if-eqz v0, :cond_5

    .line 1876
    const-string v0, "NotificationService"

    const-string v1, "Battery Full, Charging"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    const v1, 0xc800

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 1879
    :cond_5
    const-string v0, "NotificationService"

    const-string v1, "Charging..."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, v6, v2, v3, v3}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_0
.end method

.method private updateCharmsLocked()V
    .locals 0

    .prologue
    .line 1979
    return-void
.end method

.method private updateJogsLocked()V
    .locals 0

    .prologue
    .line 1950
    return-void
.end method

.method private updateLights(Z)V
    .locals 2
    .parameter "bNewNotification"

    .prologue
    .line 1805
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1806
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->updateLightsLocked(Z)V

    .line 1807
    monitor-exit v1

    .line 1808
    return-void

    .line 1807
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateLightsLocked(Z)V
    .locals 0
    .parameter "bNewNotification"

    .prologue
    .line 1817
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->updateMultiLightsLocked(Z)V

    .line 1818
    return-void
.end method

.method private updateMultiLightsLocked(Z)V
    .locals 9
    .parameter "bNewNotification"

    .prologue
    const v8, 0xc8c800

    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 1890
    const/4 v0, 0x0

    .line 1895
    .local v0, bFlashLight:Z
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1896
    .local v3, n:I
    if-lez v3, :cond_7

    .line 1897
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1905
    :goto_0
    iget v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryHealth:I

    if-ne v4, v6, :cond_0

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-nez v4, :cond_2

    :cond_0
    iget v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-nez v4, :cond_2

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-nez v4, :cond_8

    .line 1908
    :cond_2
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateBatteryLight()V

    .line 1933
    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 1934
    const-string v4, "NotificationService"

    const-string v5, "dual Led for notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->ledARGB:I

    .line 1936
    .local v1, ledARGB:I
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFlashLedDuringCharging()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_5

    .line 1937
    :cond_4
    const v1, 0xc800

    .line 1939
    :cond_5
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    const/16 v5, 0xff

    invoke-virtual {v4, v8, v5, v7, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1940
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1942
    .end local v1           #ledARGB:I
    :cond_6
    return-void

    .line 1899
    :cond_7
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    goto :goto_0

    .line 1909
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-eqz v4, :cond_b

    .line 1910
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFlashLedDuringCharging()Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz p1, :cond_9

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-eqz v4, :cond_9

    .line 1911
    const/4 v0, 0x1

    .line 1913
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v4, v6}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 1915
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v5, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/NotificationManagerService$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1916
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const-wide/32 v5, 0x493e0

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1917
    .end local v2           #msg:Landroid/os/Message;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFlashLedDuringCharging()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v4, v6}, Lcom/android/server/NotificationManagerService$WorkerHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1921
    :cond_a
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateBatteryLight()V

    goto :goto_1

    .line 1926
    :cond_b
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-nez v4, :cond_c

    .line 1927
    const-string v4, "NotificationService"

    const-string v5, "dual Led off"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mMultiLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, v8, v7, v7, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_1

    .line 1930
    :cond_c
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateNotificationPulse()V
    .locals 2

    .prologue
    .line 2039
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2040
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked(Z)V

    .line 2041
    monitor-exit v1

    .line 2042
    return-void

    .line 2041
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writeBlockDb()V
    .locals 9

    .prologue
    .line 286
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v6

    .line 287
    const/4 v3, 0x0

    .line 289
    .local v3, outfile:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 291
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 292
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 294
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 296
    const/4 v5, 0x0

    const-string v7, "notification-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    const/4 v5, 0x0

    const-string v7, "version"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 298
    const/4 v5, 0x0

    const-string v7, "blocked-packages"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 301
    .local v4, pkg:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    const/4 v5, 0x0

    const-string v7, "name"

    invoke-interface {v2, v5, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/io/IOException;
    if-eqz v3, :cond_0

    .line 313
    :try_start_1
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 316
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    return-void

    .line 305
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    const-string v7, "blocked-packages"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    const/4 v5, 0x0

    const-string v7, "notification-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 310
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 316
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method


# virtual methods
.method public areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    .line 321
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->areNotificationsEnabledForPackageInt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method cancelAll()V
    .locals 6

    .prologue
    .line 1739
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 1740
    const-string v3, "NotificationService"

    const-string v4, "cancelAll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_0
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1759
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1760
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1761
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1763
    .local v2, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x22

    if-nez v3, :cond_1

    .line 1765
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1766
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 1760
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1770
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFlashLedDuringCharging()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1771
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 1772
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->updateLightsLocked(Z)V

    .line 1774
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    .line 1775
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V

    .line 1776
    monitor-exit v4

    .line 1777
    return-void

    .line 1776
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public cancelAllNotifications(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"

    .prologue
    .line 1705
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 1709
    const/4 v0, 0x0

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 1710
    return-void
.end method

.method cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z
    .locals 9
    .parameter "pkg"
    .parameter "mustHaveFlags"
    .parameter "mustNotHaveFlags"
    .parameter "doit"

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1612
    const/16 v5, 0xac0

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1614
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 1615
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancelAllNotificationsInt pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :cond_0
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1660
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1661
    .local v0, N:I
    const/4 v1, 0x0

    .line 1662
    .local v1, canceledSomething:Z
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_5

    .line 1663
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1664
    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/2addr v6, p2

    if-eq v6, p2, :cond_2

    .line 1662
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1667
    :cond_2
    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/2addr v6, p3

    if-nez v6, :cond_1

    .line 1670
    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1673
    const/4 v1, 0x1

    .line 1674
    if-nez p4, :cond_3

    .line 1675
    monitor-exit v5

    .line 1687
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_2
    return v4

    .line 1677
    .restart local v3       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFlashLedDuringCharging()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1678
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v7, 0x3

    iget-object v8, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1679
    :cond_4
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1680
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    goto :goto_1

    .line 1688
    .end local v0           #N:I
    .end local v1           #canceledSomething:Z
    .end local v2           #i:I
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1682
    .restart local v0       #N:I
    .restart local v1       #canceledSomething:Z
    .restart local v2       #i:I
    :cond_5
    if-eqz v1, :cond_6

    .line 1683
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/NotificationManagerService;->updateLightsLocked(Z)V

    .line 1684
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    .line 1685
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V

    .line 1687
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v1

    goto :goto_2
.end method

.method cancelAll_pd()V
    .locals 6

    .prologue
    .line 1780
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1781
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1782
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1783
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1785
    .local v2, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x22

    if-nez v3, :cond_0

    .line 1787
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1788
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 1782
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1792
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFlashLedDuringCharging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1793
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 1794
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->updateLightsLocked(Z)V

    .line 1796
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    .line 1797
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V

    .line 1798
    monitor-exit v4

    .line 1799
    return-void

    .line 1798
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public cancelNotification(Ljava/lang/String;I)V
    .locals 1
    .parameter "pkg"
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1693
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/NotificationManagerService;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1694
    return-void
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 1697
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 1699
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    move v5, v4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 1702
    return-void

    .line 1699
    :cond_0
    const/16 v5, 0x40

    goto :goto_0
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .locals 7
    .parameter "pkg"
    .parameter "callback"

    .prologue
    .line 875
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelToast pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 878
    :cond_0
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not cancelling notification. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :goto_0
    return-void

    .line 882
    :cond_1
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 883
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 885
    .local v0, callingId:J
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v2

    .line 886
    .local v2, index:I
    if-ltz v2, :cond_2

    .line 887
    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 892
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 894
    monitor-exit v4

    goto :goto_0

    .end local v0           #callingId:J
    .end local v2           #index:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 889
    .restart local v0       #callingId:J
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    const-string v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toast already cancelled. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 892
    .end local v2           #index:I
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method checkCallerIsSystem()V
    .locals 4

    .prologue
    .line 1713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1714
    .local v0, uid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 1715
    :cond_0
    return-void

    .line 1717
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 6
    .parameter "pkg"

    .prologue
    .line 1721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1722
    .local v2, uid:I
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_1

    .line 1736
    :cond_0
    return-void

    .line 1726
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1728
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserId;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1729
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCallerIsSystemOrSameApp, pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Pkguid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1734
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2065
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2134
    :goto_0
    return-void

    .line 2073
    :cond_0
    const-string v2, "Current Notification Manager state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2078
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2079
    .local v0, N:I
    if-lez v0, :cond_2

    .line 2080
    const-string v2, "  Toast Queue:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2081
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2082
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    const-string v4, "    "

    invoke-virtual {v2, p2, v4}, Lcom/android/server/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2081
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2084
    :cond_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    .end local v1           #i:I
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2089
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2090
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2091
    if-lez v0, :cond_4

    .line 2092
    const-string v2, "  Notification List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 2094
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2093
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2087
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2096
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_3
    :try_start_3
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2099
    .end local v1           #i:I
    :cond_4
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2100
    if-lez v0, :cond_6

    .line 2101
    const-string v2, "  Lights List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v0, :cond_5

    .line 2103
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V

    .line 2102
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2105
    :cond_5
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2108
    .end local v1           #i:I
    :cond_6
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2109
    if-lez v0, :cond_8

    .line 2110
    const-string v2, "  Jogs List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2111
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-ge v1, v0, :cond_7

    .line 2112
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V

    .line 2111
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2114
    :cond_7
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2119
    .end local v1           #i:I
    :cond_8
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2120
    if-lez v0, :cond_a

    .line 2121
    const-string v2, "  Charms List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2122
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    if-ge v1, v0, :cond_9

    .line 2123
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V

    .line 2122
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2125
    :cond_9
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2129
    .end local v1           #i:I
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSoundNotification="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mVibrateNotification="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mDisabledNotifications=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSystemReady="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    .locals 6
    .parameter "pkg"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1071
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/NotificationManagerService;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 1072
    return-void
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[I)V
    .locals 45
    .parameter "pkg"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "tag"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 1094
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    if-eqz p6, :cond_0

    .line 1095
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notification flags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    iget v8, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", defaults="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    iget v8, v0, Landroid/app/Notification;->defaults:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", charmMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    iget v8, v0, Landroid/app/Notification;->charmMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDisabledNotifications="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 1099
    const-string v6, "android"

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    .line 1103
    .local v31, isSystemNotification:Z
    if-nez v31, :cond_4

    .line 1104
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1105
    const/16 v26, 0x0

    .line 1106
    .local v26, count:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1107
    .local v20, N:I
    const/16 v27, 0x0

    .local v27, i:I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 1108
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1109
    .local v5, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v6, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1110
    add-int/lit8 v26, v26, 0x1

    .line 1111
    const/16 v6, 0x32

    move/from16 v0, v26

    if-lt v0, v6, :cond_2

    .line 1112
    const-string v6, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package has already posted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " notifications.  Not showing more.  package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    monitor-exit v7

    .line 1440
    .end local v5           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v20           #N:I
    .end local v26           #count:I
    .end local v27           #i:I
    :cond_1
    :goto_1
    return-void

    .line 1107
    .restart local v5       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v20       #N:I
    .restart local v26       #count:I
    .restart local v27       #i:I
    :cond_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 1118
    .end local v5           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    .end local v20           #N:I
    .end local v26           #count:I
    .end local v27           #i:I
    :cond_4
    const-string v6, "com.android.providers.downloads"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "DownloadManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1125
    :cond_5
    const/16 v6, 0xabe

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p4, v7, v8

    const/4 v8, 0x3

    invoke-virtual/range {p6 .. p6}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1129
    :cond_6
    if-eqz p1, :cond_7

    if-nez p6, :cond_8

    .line 1130
    :cond_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "null not allowed: pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " notification="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1118
    .restart local v26       #count:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1133
    .end local v26           #count:I
    :cond_8
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_9

    .line 1134
    move-object/from16 v0, p6

    iget-object v6, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v6, :cond_9

    .line 1135
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentView required: pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " notification="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1144
    :cond_9
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->flags:I

    const/high16 v7, -0x8000

    and-int/2addr v6, v7

    if-nez v6, :cond_a

    .line 1145
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->priority:I

    const/4 v7, -0x2

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Lcom/android/server/NotificationManagerService;->clamp(III)I

    move-result v6

    move-object/from16 v0, p6

    iput v6, v0, Landroid/app/Notification;->priority:I

    .line 1150
    :cond_a
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_b

    .line 1151
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->priority:I

    const/4 v7, 0x2

    if-ge v6, v7, :cond_b

    const/4 v6, 0x2

    move-object/from16 v0, p6

    iput v6, v0, Landroid/app/Notification;->priority:I

    .line 1157
    :cond_b
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->priority:I

    mul-int/lit8 v11, v6, 0xa

    .line 1164
    .local v11, score:I
    if-nez v31, :cond_c

    invoke-direct/range {p0 .. p1}, Lcom/android/server/NotificationManagerService;->areNotificationsEnabledForPackageInt(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 1165
    const/16 v11, -0x3e8

    .line 1166
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suppressing notification from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " by user request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_c
    const/16 v6, -0x14

    if-lt v11, v6, :cond_1

    .line 1178
    const/16 v34, -0x1

    .line 1179
    .local v34, notiType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1180
    :try_start_2
    new-instance v5, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/android/server/NotificationManagerService$NotificationRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILandroid/app/Notification;)V

    .line 1184
    .restart local v5       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    const/16 v36, 0x0

    .line 1186
    .local v36, old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v30

    .line 1187
    .local v30, index:I
    if-gez v30, :cond_24

    .line 1188
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    :cond_d
    :goto_2
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_e

    .line 1202
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x22

    move-object/from16 v0, p6

    iput v6, v0, Landroid/app/Notification;->flags:I

    .line 1206
    :cond_e
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_26

    .line 1207
    new-instance v12, Lcom/android/internal/statusbar/StatusBarNotification;

    iget v0, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->uid:I

    move/from16 v16, v0

    iget v0, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->initialPid:I

    move/from16 v17, v0

    move-object/from16 v13, p1

    move/from16 v14, p5

    move-object/from16 v15, p4

    move/from16 v18, v11

    move-object/from16 v19, p6

    invoke-direct/range {v12 .. v19}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;)V

    .line 1209
    .local v12, n:Lcom/android/internal/statusbar/StatusBarNotification;
    if-eqz v36, :cond_25

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v6, :cond_25

    .line 1210
    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    iput-object v6, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v28

    .line 1213
    .local v28, identity:J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v7, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v12}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1216
    :try_start_4
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1218
    const/16 v34, 0x0

    .line 1234
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 1252
    .end local v12           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v28           #identity:J
    :cond_f
    :goto_4
    sget-object v43, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 1253
    .local v43, vibrate_pattern_old:[J
    const/16 v35, -0x1

    .line 1254
    .local v35, notification_defaults_old:I
    const/16 v33, -0x1

    .line 1255
    .local v33, nSystemVolumnOld:I
    const-string v6, "com.htc.calendar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_10

    .line 1257
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.htc.calendar in Call reminder is coming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    iget-object v8, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    .line 1259
    const/4 v6, 0x1

    move-object/from16 v0, p6

    iput v6, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1260
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v43, v0

    .line 1261
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v35, v0

    .line 1262
    const/4 v6, 0x0

    move-object/from16 v0, p6

    iput-object v6, v0, Landroid/app/Notification;->vibrate:[J

    .line 1263
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->defaults:I

    xor-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p6

    iput v6, v0, Landroid/app/Notification;->defaults:I

    .line 1267
    :cond_10
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-nez v6, :cond_1b

    if-eqz v36, :cond_11

    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1b

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v6, :cond_1b

    .line 1272
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/media/AudioManager;

    .line 1275
    .local v21, audioManager:Landroid/media/AudioManager;
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_27

    const/16 v41, 0x1

    .line 1277
    .local v41, useDefaultSound:Z
    :goto_5
    if-nez v41, :cond_12

    move-object/from16 v0, p6

    iget-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v6, :cond_19

    .line 1279
    :cond_12
    if-eqz v41, :cond_28

    .line 1280
    sget-object v40, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1284
    .local v40, uri:Landroid/net/Uri;
    :goto_6
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_29

    const/16 v32, 0x1

    .line 1286
    .local v32, looping:Z
    :goto_7
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v6, :cond_2a

    .line 1287
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    move/from16 v22, v0

    .line 1291
    .local v22, audioStreamType:I
    :goto_8
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1295
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd8

    if-ne v6, v7, :cond_15

    .line 1297
    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v38

    .line 1298
    .local v38, ringerMode:I
    if-eqz v38, :cond_13

    const/4 v6, 0x1

    move/from16 v0, v38

    if-ne v0, v6, :cond_15

    :cond_13
    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioManager;->isHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioManager;->isBTConnected()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1301
    :cond_14
    const-string v6, "com.android.mms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1303
    const-string v6, "NotificationService"

    const-string v7, "message sound uses ToneGenerator"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    new-instance v39, Landroid/media/ToneGenerator;

    const/4 v6, 0x0

    const/16 v7, 0x46

    move-object/from16 v0, v39

    invoke-direct {v0, v6, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 1306
    .local v39, tone:Landroid/media/ToneGenerator;
    if-eqz v39, :cond_15

    .line 1307
    const/16 v6, 0x16

    const/16 v7, 0xfa

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1315
    .end local v38           #ringerMode:I
    .end local v39           #tone:Landroid/media/ToneGenerator;
    :cond_15
    invoke-virtual/range {v21 .. v22}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    if-eqz v6, :cond_19

    .line 1318
    const/16 v23, 0x0

    .line 1319
    .local v23, bKddi:Z
    const/16 v24, 0x0

    .line 1320
    .local v24, bVzwCMAS:Z
    const-string v6, "com.android.mms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    if-eqz p4, :cond_16

    .line 1322
    const-string v6, "KDDI_MAX_VOLUME"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    .line 1323
    const-string v6, "VZW_CMAS_IgnoreNotification2Mute"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    .line 1326
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v28

    .line 1328
    .restart local v28       #identity:J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v6}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v37

    .line 1329
    .local v37, player:Landroid/media/IRingtonePlayer;
    if-eqz v37, :cond_18

    .line 1330
    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    .line 1331
    .local v25, bundle:Landroid/os/Bundle;
    const-string v6, "id"

    move-object/from16 v0, v25

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1332
    const-string v6, "pkg"

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    if-eqz v24, :cond_2b

    .line 1334
    const-string v6, "EnableMuteCMAS"

    const/4 v7, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1338
    :cond_17
    :goto_9
    move-object/from16 v0, v37

    move-object/from16 v1, v40

    move/from16 v2, v32

    move/from16 v3, v22

    move-object/from16 v4, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;ZI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1343
    .end local v25           #bundle:Landroid/os/Bundle;
    :cond_18
    :try_start_6
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    .end local v22           #audioStreamType:I
    .end local v23           #bKddi:Z
    .end local v24           #bVzwCMAS:Z
    .end local v28           #identity:J
    .end local v32           #looping:Z
    .end local v37           #player:Landroid/media/IRingtonePlayer;
    .end local v40           #uri:Landroid/net/Uri;
    :cond_19
    :goto_a
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2c

    const/16 v42, 0x1

    .line 1351
    .local v42, useDefaultVibrate:Z
    :goto_b
    if-nez v42, :cond_1a

    move-object/from16 v0, p6

    iget-object v6, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v6, :cond_2f

    :cond_1a
    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-eqz v6, :cond_2f

    .line 1353
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1355
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v42, :cond_2d

    sget-object v6, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    move-object v7, v6

    :goto_c
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2e

    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v8, v7, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 1375
    .end local v21           #audioManager:Landroid/media/AudioManager;
    .end local v41           #useDefaultSound:Z
    .end local v42           #useDefaultVibrate:Z
    :cond_1b
    :goto_e
    const-string v6, "com.htc.calendar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_1c

    .line 1377
    const/high16 v6, 0x4

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    .line 1378
    const/4 v6, 0x5

    move-object/from16 v0, p6

    iput v6, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1379
    move-object/from16 v0, v43

    move-object/from16 v1, p6

    iput-object v0, v1, Landroid/app/Notification;->vibrate:[J

    .line 1380
    move/from16 v0, v35

    move-object/from16 v1, p6

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1387
    :cond_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1388
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v36

    if-ne v6, v0, :cond_1d

    .line 1389
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1393
    :cond_1d
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_31

    .line 1394
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/NotificationManagerService;->updateLightsLocked(Z)V

    .line 1403
    :cond_1e
    :goto_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1404
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mJogNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v36

    if-ne v6, v0, :cond_1f

    .line 1405
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/NotificationManagerService;->mJogNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1407
    :cond_1f
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->flags:I

    const/high16 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_32

    .line 1408
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    .line 1419
    :cond_20
    :goto_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1420
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mCharmNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v36

    if-ne v6, v0, :cond_21

    .line 1421
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/NotificationManagerService;->mCharmNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1423
    :cond_21
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->flags:I

    const/high16 v7, 0x200

    and-int/2addr v6, v7

    if-eqz v6, :cond_33

    .line 1424
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V

    .line 1433
    :cond_22
    :goto_11
    monitor-exit v44
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1436
    const/4 v6, -0x1

    move/from16 v0, v34

    if-le v0, v6, :cond_23

    .line 1437
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/NotificationManagerService;->broadcastIntent(IILjava/lang/String;Landroid/app/Notification;)V

    .line 1439
    :cond_23
    const/4 v6, 0x0

    aput p5, p7, v6

    goto/16 :goto_1

    .line 1190
    .end local v33           #nSystemVolumnOld:I
    .end local v35           #notification_defaults_old:I
    .end local v43           #vibrate_pattern_old:[J
    :cond_24
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v36

    .end local v36           #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    check-cast v36, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1191
    .restart local v36       #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v6, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1193
    if-eqz v36, :cond_d

    .line 1194
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->flags:I

    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x40

    or-int/2addr v6, v7

    move-object/from16 v0, p6

    iput v6, v0, Landroid/app/Notification;->flags:I

    goto/16 :goto_2

    .line 1433
    .end local v5           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v30           #index:I
    .end local v36           #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_1
    move-exception v6

    monitor-exit v44
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v6

    .line 1216
    .restart local v5       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v12       #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .restart local v28       #identity:J
    .restart local v30       #index:I
    .restart local v36       #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_2
    move-exception v6

    :try_start_8
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1220
    .end local v28           #identity:J
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v28

    .line 1222
    .restart local v28       #identity:J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v6, v12}, Lcom/android/server/StatusBarManagerService;->addNotification(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1230
    :try_start_a
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1232
    const/16 v34, 0x1

    goto/16 :goto_3

    .line 1230
    :catchall_3
    move-exception v6

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1238
    .end local v12           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v28           #identity:J
    :cond_26
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring notification with icon==0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    if-eqz v36, :cond_f

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v6, :cond_f

    .line 1240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-wide v28

    .line 1242
    .restart local v28       #identity:J
    :try_start_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1245
    :try_start_c
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    :catchall_4
    move-exception v6

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1275
    .end local v28           #identity:J
    .restart local v21       #audioManager:Landroid/media/AudioManager;
    .restart local v33       #nSystemVolumnOld:I
    .restart local v35       #notification_defaults_old:I
    .restart local v43       #vibrate_pattern_old:[J
    :cond_27
    const/16 v41, 0x0

    goto/16 :goto_5

    .line 1282
    .restart local v41       #useDefaultSound:Z
    :cond_28
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v40, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .restart local v40       #uri:Landroid/net/Uri;
    goto/16 :goto_6

    .line 1284
    :cond_29
    const/16 v32, 0x0

    goto/16 :goto_7

    .line 1289
    .restart local v32       #looping:Z
    :cond_2a
    const/16 v22, 0x5

    .restart local v22       #audioStreamType:I
    goto/16 :goto_8

    .line 1335
    .restart local v23       #bKddi:Z
    .restart local v24       #bVzwCMAS:Z
    .restart local v25       #bundle:Landroid/os/Bundle;
    .restart local v28       #identity:J
    .restart local v37       #player:Landroid/media/IRingtonePlayer;
    :cond_2b
    if-eqz v23, :cond_17

    .line 1336
    :try_start_d
    const-string v6, "KDDI_max_volume"

    const/4 v7, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_9

    .line 1341
    .end local v25           #bundle:Landroid/os/Bundle;
    .end local v37           #player:Landroid/media/IRingtonePlayer;
    :catch_0
    move-exception v6

    .line 1343
    :try_start_e
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_a

    :catchall_5
    move-exception v6

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1349
    .end local v22           #audioStreamType:I
    .end local v23           #bKddi:Z
    .end local v24           #bVzwCMAS:Z
    .end local v28           #identity:J
    .end local v32           #looping:Z
    .end local v40           #uri:Landroid/net/Uri;
    :cond_2c
    const/16 v42, 0x0

    goto/16 :goto_b

    .line 1355
    .restart local v42       #useDefaultVibrate:Z
    :cond_2d
    move-object/from16 v0, p6

    iget-object v6, v0, Landroid/app/Notification;->vibrate:[J

    move-object v7, v6

    goto/16 :goto_c

    :cond_2e
    const/4 v6, -0x1

    goto/16 :goto_d

    .line 1360
    :cond_2f
    move-object/from16 v0, p6

    iget v6, v0, Landroid/app/Notification;->flags:I

    const/high16 v7, 0x100

    and-int/2addr v6, v7

    if-eqz v6, :cond_1b

    .line 1364
    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v38

    .line 1365
    .restart local v38       #ringerMode:I
    if-nez v41, :cond_30

    move-object/from16 v0, p6

    iget-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v6, :cond_1b

    :cond_30
    const/4 v6, 0x1

    move/from16 v0, v38

    if-ne v0, v6, :cond_1b

    .line 1367
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1368
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    sget-object v7, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_e

    .line 1397
    .end local v21           #audioManager:Landroid/media/AudioManager;
    .end local v38           #ringerMode:I
    .end local v41           #useDefaultSound:Z
    .end local v42           #useDefaultVibrate:Z
    :cond_31
    if-eqz v36, :cond_1e

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1e

    .line 1399
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/NotificationManagerService;->updateLightsLocked(Z)V

    goto/16 :goto_f

    .line 1411
    :cond_32
    if-eqz v36, :cond_20

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/high16 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_20

    .line 1413
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    goto/16 :goto_10

    .line 1427
    :cond_33
    if-eqz v36, :cond_22

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/high16 v7, 0x200

    and-int/2addr v6, v7

    if-eqz v6, :cond_22

    .line 1429
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_11
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V
    .locals 8
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 1077
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[I)V

    .line 1079
    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .locals 17
    .parameter "pkg"
    .parameter "callback"
    .parameter "duration"

    .prologue
    .line 814
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 815
    :cond_0
    const-string v13, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not doing toast. pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " callback="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :goto_0
    return-void

    .line 819
    :cond_1
    const-string v13, "android"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 821
    .local v10, isSystemToast:Z
    if-nez v10, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/NotificationManagerService;->areNotificationsEnabledForPackageInt(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 822
    const-string v13, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Suppressing toast from package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " by user request."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 826
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v14

    .line 827
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 828
    .local v6, callingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 831
    .local v4, callingId:J
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v9

    .line 834
    .local v9, index:I
    if-ltz v9, :cond_4

    .line 835
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 836
    .local v12, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/NotificationManagerService$ToastRecord;->update(I)V

    .line 865
    :goto_1
    if-nez v9, :cond_3

    .line 866
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 869
    :cond_3
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    monitor-exit v14

    goto :goto_0

    .end local v4           #callingId:J
    .end local v6           #callingPid:I
    .end local v9           #index:I
    .end local v12           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 840
    .restart local v4       #callingId:J
    .restart local v6       #callingPid:I
    .restart local v9       #index:I
    :cond_4
    if-nez v10, :cond_6

    .line 841
    const/4 v7, 0x0

    .line 842
    .local v7, count:I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 843
    .local v3, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v3, :cond_6

    .line 844
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 845
    .local v11, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget-object v13, v11, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 846
    add-int/lit8 v7, v7, 0x1

    .line 847
    const/16 v13, 0x32

    if-lt v7, v13, :cond_5

    .line 848
    const-string v13, "NotificationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Package has already posted "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " toasts. Not showing more. Package="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 869
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 850
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 843
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 856
    .end local v3           #N:I
    .end local v7           #count:I
    .end local v8           #i:I
    .end local v11           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_6
    :try_start_5
    new-instance v12, Lcom/android/server/NotificationManagerService$ToastRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v12, v6, v0, v1, v2}, Lcom/android/server/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 857
    .restart local v12       #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v9, v13, -0x1

    .line 859
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 869
    .end local v9           #index:I
    .end local v12           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :catchall_1
    move-exception v13

    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method getDefaultNotificationColor()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    return v0
.end method

.method getLedNotification()Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object v0
.end method

.method public getAllNotificationRecord()[Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 1538
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1540
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/4 v4, 0x0

    new-array v0, v4, [Landroid/os/Bundle;

    .line 1557
    .local v0, array:[Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 1547
    .end local v0           #array:[Landroid/os/Bundle;
    :cond_0
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1548
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1549
    .local v3, size:I
    new-array v0, v3, [Landroid/os/Bundle;

    .line 1550
    .restart local v0       #array:[Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1551
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1552
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "pkg"

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    const-string v6, "id"

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1554
    const-string v6, "notification"

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1555
    aput-object v1, v0, v2

    .line 1550
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1557
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 1558
    .end local v0           #array:[Landroid/os/Bundle;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    .locals 5
    .parameter "pkg"
    .parameter "enabled"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    .line 338
    if-eqz p2, :cond_0

    .line 339
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 357
    :goto_0
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->writeBlockDb()V

    .line 358
    return-void

    .line 341
    :cond_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 346
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 347
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 348
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 349
    .local v2, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 347
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 353
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setShareLED(I)V
    .locals 2
    .parameter "repeatTimes"

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2049
    const-string v0, "NotificationService"

    const-string v1, "setShareLED() Permission Denial"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :cond_0
    return-void
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 801
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    .line 806
    return-void
.end method
