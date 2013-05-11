.class public Lcom/android/camera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/camera/CameraEntry;

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
