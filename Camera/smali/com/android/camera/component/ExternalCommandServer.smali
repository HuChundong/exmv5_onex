.class Lcom/android/camera/component/ExternalCommandServer;
.super Lcom/android/camera/component/IntentReceiver;
.source "ExternalCommandServer.java"


# static fields
.field private static final ACTION_COMMAND:Ljava/lang/String; = "com.android.camera.intent.action.COMMAND"

.field private static final EXTRA_ARGUMENTS:Ljava/lang/String; = "arguments"

.field private static final EXTRA_COMMAND:Ljava/lang/String; = "command"

.field private static final EXTRA_ID:Ljava/lang/String; = "id"

.field static final NAME:Ljava/lang/String; = "External Command Server"


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6

    const-string v1, "External Command Server"

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V

    return-void
.end method


# virtual methods
.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.camera.intent.action.COMMAND"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, ""

    :try_start_0
    const-string v6, "id"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "command"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "arguments"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v6, "&"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v3, Lcom/android/camera/ExternalCommandEventArgs;

    invoke-direct {v3, v5, v2, v0}, Lcom/android/camera/ExternalCommandEventArgs;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ExternalCommandServer;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {v3}, Lcom/android/camera/ExternalCommandEventArgs;->isHandled()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "help"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown command \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    const-string v6, "ExternalCommandResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}}[COMPLETE]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v4

    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "Error handling external command"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected prepareIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "com.android.camera.intent.action.COMMAND"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
