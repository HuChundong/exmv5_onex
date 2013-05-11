.class Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;
.super Ljava/lang/Object;
.source "HtcPhoneWindowManagerExtention.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;,
        Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_ON:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcPhoneWindowManagerExtention"

.field private static final isCamcorderDevices:Z


# instance fields
.field public keyEventHandle:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

.field public logKeyCodeHandle:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;

.field public phoneCallHandle:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->DEBUG_ON:Z

    .line 36
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->isCamcorderDevices:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mInitialized:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/HtcPolicyUtils;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;

    .line 90
    new-instance v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;-><init>(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->phoneCallHandle:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;

    .line 152
    new-instance v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;-><init>(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->logKeyCodeHandle:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;

    .line 276
    new-instance v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->keyEventHandle:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)Lcom/android/internal/policy/impl/HtcPolicyUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->DEBUG_ON:Z

    return v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mInitialized:Z

    .line 31
    const-string v0, "HtcPhoneWindowManagerExtention"

    const-string v1, "initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method isPhoneInCall()Z
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->isInCall()Z

    move-result v0

    .line 84
    return v0
.end method

.method isWakeKeyHandledByInputManager(ZI)Z
    .locals 2
    .parameter "isScreenOn"
    .parameter "keyCode"

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, ret:Z
    if-nez p1, :cond_0

    const/16 v1, 0x1a

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resultCamcorderWakeKey(II)I
    .locals 3
    .parameter "result"
    .parameter "keyCode"

    .prologue
    .line 46
    move v0, p1

    .line 47
    .local v0, ret:I
    sget-boolean v1, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->isCamcorderDevices:Z

    if-eqz v1, :cond_2

    .line 48
    const/16 v1, 0x1b

    if-eq p2, v1, :cond_0

    const/16 v1, 0xe4

    if-ne p2, v1, :cond_2

    .line 50
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 51
    sget-boolean v1, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcPhoneWindowManagerExtention"

    const-string v2, "delay 100ms to wait for screen on"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_2
    :goto_0
    return v0

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method
