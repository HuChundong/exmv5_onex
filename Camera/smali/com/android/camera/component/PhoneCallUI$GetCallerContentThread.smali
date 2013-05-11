.class public Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;
.super Ljava/lang/Object;
.source "PhoneCallUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PhoneCallUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCallerContentThread"
.end annotation


# instance fields
.field private volatile m_callerPhoneNum:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/component/PhoneCallUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/PhoneCallUI;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->m_callerPhoneNum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v2, 0x2711

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/PhoneCallUI;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/android/camera/component/PhoneCallUI;

    iget-object v1, p0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->m_callerPhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/PhoneCallUI;->getCallerContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v0}, Lcom/android/camera/component/PhoneCallUI;->access$700(Lcom/android/camera/component/PhoneCallUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_nCurCallState:I
    invoke-static {v0}, Lcom/android/camera/component/PhoneCallUI;->access$000(Lcom/android/camera/component/PhoneCallUI;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/android/camera/component/PhoneCallUI;

    iget-object v1, p0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/android/camera/component/PhoneCallUI;

    iget-object v5, p0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->m_callerPhoneNum:Ljava/lang/String;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PhoneCallUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "PhoneCallUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage MSG_GOT_CALLER_CONTENT, IsPhoneListenStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$700(Lcom/android/camera/component/PhoneCallUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",CurCallState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_nCurCallState:I
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$000(Lcom/android/camera/component/PhoneCallUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
