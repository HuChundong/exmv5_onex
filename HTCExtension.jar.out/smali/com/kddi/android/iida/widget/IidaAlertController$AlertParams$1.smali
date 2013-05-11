.class Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$1;
.super Ljava/lang/Object;
.source "IidaAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->createListView(Lcom/kddi/android/iida/widget/IidaAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/kddi/android/iida/widget/IidaAlertController;


# direct methods
.method constructor <init>(Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;Lcom/kddi/android/iida/widget/IidaAlertController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$1;->val$dialog:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v0, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$1;->val$dialog:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$600(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1336
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$1;->val$dialog:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$600(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1339
    :cond_0
    return-void
.end method
