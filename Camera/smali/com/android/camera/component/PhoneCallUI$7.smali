.class Lcom/android/camera/component/PhoneCallUI$7;
.super Ljava/lang/Object;
.source "PhoneCallUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PhoneCallUI;->phoneCallPopUp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PhoneCallUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PhoneCallUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PhoneCallUI$7;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$7;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$2000(Lcom/android/camera/component/PhoneCallUI;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$7;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$2000(Lcom/android/camera/component/PhoneCallUI;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, -0x9258df

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$7;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$2000(Lcom/android/camera/component/PhoneCallUI;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v2, -0x17

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$7;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$2100(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "null button"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$7;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$2200(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "null button"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$7;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$2300(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "null m_AnswerDialog"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
