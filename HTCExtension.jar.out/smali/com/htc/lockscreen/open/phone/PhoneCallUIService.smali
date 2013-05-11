.class public abstract Lcom/htc/lockscreen/open/phone/PhoneCallUIService;
.super Landroid/app/Service;
.source "PhoneCallUIService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;
    }
.end annotation


# static fields
.field public static final ACTION_ANSWER_CALL:Ljava/lang/String; = "answer_call"

.field public static final ACTION_REJECT_CALL:Ljava/lang/String; = "reject_call"

.field public static final ACTION_SEND_MESSAGE_TO_CALL:Ljava/lang/String; = "sendmsg_reject_call"

.field public static final ACTION_SILENT_CALL:Ljava/lang/String; = "silent_call"

.field public static final ACTION_UNKNOWN:Ljava/lang/String; = "unknow"


# instance fields
.field private final mPublicBinder:Landroid/os/IBinder;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$1;-><init>(Lcom/htc/lockscreen/open/phone/PhoneCallUIService;)V

    iput-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService;->mPublicBinder:Landroid/os/IBinder;

    .line 58
    new-instance v0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$2;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$2;-><init>(Lcom/htc/lockscreen/open/phone/PhoneCallUIService;)V

    iput-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService;->mUIHandler:Landroid/os/Handler;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/open/phone/PhoneCallUIService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static endPhoneUI(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/lockscreen/open/phone/PhoneCallUIService;->endPhoneUI(Landroid/content/Context;I)V

    .line 137
    return-void
.end method

.method public static endPhoneUI(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "callId"

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.lockscreen.phone.update_phoneState"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "call_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v2, "withPhoneState"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    return-void
.end method

.method public static startPhoneUI(Landroid/content/Context;Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;)V
    .locals 0
    .parameter "context"
    .parameter "state"

    .prologue
    .line 110
    invoke-static {p0, p1}, Lcom/htc/lockscreen/open/phone/PhoneCallUIService;->updatePhoneUI(Landroid/content/Context;Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;)V

    .line 111
    return-void
.end method

.method public static updatePhoneUI(Landroid/content/Context;Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;)V
    .locals 4
    .parameter "context"
    .parameter "state"

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.lockscreen.phone.update_phoneState"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v2, "call_id"

    invoke-virtual {p1}, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v2, "withPhoneState"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v2, "phoneState"

    #getter for: Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;
    invoke-static {p1}, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->access$100(Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;)Lcom/htc/lockscreen/telephony/PhoneState;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService;->mPublicBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public abstract performAction(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method
