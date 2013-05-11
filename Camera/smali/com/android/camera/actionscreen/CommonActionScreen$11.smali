.class Lcom/android/camera/actionscreen/CommonActionScreen$11;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Lcom/android/camera/widget/PopupBubble$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/CommonActionScreen;->onSetAsClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/CommonActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$11;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/android/camera/widget/PopupBubble;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$11;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #setter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$502(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$11;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #setter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$602(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$11;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #getter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$700(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$11;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #getter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$700(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcIconButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$11;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    return-void
.end method
