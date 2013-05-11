.class Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;
.super Ljava/lang/Object;
.source "HtcPhoneWindowManagerExtention.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneCallHandle"
.end annotation


# instance fields
.field private mIsHandled:Z

.field private mIsHandledBeforeQueueing:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandledBeforeQueueing:Z

    return-void
.end method

.method private isEndCallInScreenOff(Z)Z
    .locals 2
    .parameter "isScreenOn"

    .prologue
    .line 96
    if-eqz p1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleBeforeQueueing(ZI)Z
    .locals 3
    .parameter "isScreenOn"
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x1

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, hungUp:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandled:Z

    .line 116
    sparse-switch p2, :sswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 121
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    #getter for: Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$000(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getPowerKeyFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->isEndCallInScreenOff(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    #getter for: Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$000(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->endCall()Z

    move-result v0

    .line 124
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandled:Z

    .line 125
    invoke-static {}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcPhoneWindowManagerExtention"

    const-string v2, "endCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    #getter for: Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$000(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->setPowerKeyFlag()V

    .line 128
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    #getter for: Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$000(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->silenceRinger()V

    .line 129
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandled:Z

    .line 130
    invoke-static {}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcPhoneWindowManagerExtention"

    const-string v2, "silenceRinger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->isEndCallInScreenOff(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    #getter for: Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$000(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->endCall()Z

    move-result v0

    .line 136
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandled:Z

    .line 137
    invoke-static {}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcPhoneWindowManagerExtention"

    const-string v2, "endCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandled:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandledBeforeQueueing:Z

    .line 105
    return-void
.end method

.method public isHandledBeforeQueueing()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandledBeforeQueueing:Z

    return v0
.end method
