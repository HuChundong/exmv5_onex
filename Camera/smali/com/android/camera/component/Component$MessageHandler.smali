.class final Lcom/android/camera/component/Component$MessageHandler;
.super Landroid/os/Handler;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageHandler"
.end annotation


# instance fields
.field private m_Owner:Lcom/android/camera/component/Component;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/Component;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/camera/component/Component$MessageHandler;->m_Owner:Lcom/android/camera/component/Component;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/component/Component$MessageHandler;->m_Owner:Lcom/android/camera/component/Component;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/component/Component$MessageHandler;->m_Owner:Lcom/android/camera/component/Component;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/Component;->access$000(Lcom/android/camera/component/Component;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/Component$MessageHandler;->m_Owner:Lcom/android/camera/component/Component;

    #getter for: Lcom/android/camera/component/Component;->m_PrintMessageLogs:Z
    invoke-static {v3}, Lcom/android/camera/component/Component;->access$100(Lcom/android/camera/component/Component;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, -0xa

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/camera/component/Component$MessageHandler;->m_Owner:Lcom/android/camera/component/Component;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/android/camera/debug/Debugger;->getMessageName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Message : "

    const-string v4, " - start"

    invoke-static {v2, v3, v0, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/Component$MessageHandler;->m_Owner:Lcom/android/camera/component/Component;

    invoke-virtual {v3, p1}, Lcom/android/camera/component/Component;->handleMessage(Landroid/os/Message;)V

    if-eqz v1, :cond_0

    const-string v3, "Message : "

    const-string v4, " - end"

    invoke-static {v2, v3, v0, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v3, "Component.MessageHandler"

    const-string v4, "Component is deinitialized"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/Component$MessageHandler;->m_Owner:Lcom/android/camera/component/Component;

    return-void
.end method
