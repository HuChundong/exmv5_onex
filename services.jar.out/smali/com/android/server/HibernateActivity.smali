.class public Lcom/android/server/HibernateActivity;
.super Landroid/app/Activity;
.source "HibernateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HibernateActivity$ResumeReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HibernateActivity"


# instance fields
.field private mConfirm:Z

.field private mResumeIntentFilter:Landroid/content/IntentFilter;

.field private mResumeReceiver:Lcom/android/server/HibernateActivity$ResumeReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HibernateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/server/HibernateActivity;->mConfirm:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/HibernateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/HibernateActivity;->mConfirm:Z

    .line 43
    const-string v0, "HibernateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): confirm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/HibernateActivity;->mConfirm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/HibernateActivity;->mResumeIntentFilter:Landroid/content/IntentFilter;

    .line 46
    iget-object v0, p0, Lcom/android/server/HibernateActivity;->mResumeIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/android/server/HibernateActivity$ResumeReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/HibernateActivity$ResumeReceiver;-><init>(Lcom/android/server/HibernateActivity;)V

    iput-object v0, p0, Lcom/android/server/HibernateActivity;->mResumeReceiver:Lcom/android/server/HibernateActivity$ResumeReceiver;

    .line 48
    iget-object v0, p0, Lcom/android/server/HibernateActivity;->mResumeReceiver:Lcom/android/server/HibernateActivity$ResumeReceiver;

    iget-object v1, p0, Lcom/android/server/HibernateActivity;->mResumeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/HibernateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 64
    iget-object v0, p0, Lcom/android/server/HibernateActivity;->mResumeReceiver:Lcom/android/server/HibernateActivity$ResumeReceiver;

    invoke-virtual {p0, v0}, Lcom/android/server/HibernateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 55
    .local v0, h:Landroid/os/Handler;
    new-instance v1, Lcom/android/server/HibernateActivity$1;

    invoke-direct {v1, p0}, Lcom/android/server/HibernateActivity$1;-><init>(Lcom/android/server/HibernateActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method
