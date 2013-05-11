.class Lcom/htc/dialog/HtcAlertController$AlertParams$3;
.super Landroid/widget/ArrayAdapter;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dialog/HtcAlertController$AlertParams;->createListView(Lcom/htc/dialog/HtcAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;


# direct methods
.method constructor <init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1546
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1549
    if-nez p2, :cond_1

    .line 1550
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v2, v2, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_3

    const v0, 0x2090021

    .line 1553
    .local v0, layout:I
    :goto_0
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v2, v2, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    if-eqz v2, :cond_0

    .line 1554
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v2, v2, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_4

    const v0, 0x2090022

    .line 1558
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v2, v2, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1561
    .end local v0           #layout:I
    :cond_1
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1562
    .local v1, text:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1563
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    invoke-virtual {p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    #calls: Lcom/htc/dialog/HtcAlertController$AlertParams;->setListItemText(Landroid/view/View;Ljava/lang/CharSequence;)V
    invoke-static {v3, v1, v2}, Lcom/htc/dialog/HtcAlertController$AlertParams;->access$800(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1565
    :cond_2
    return-object p2

    .line 1550
    .end local v1           #text:Landroid/view/View;
    :cond_3
    const v0, 0x209001d

    goto :goto_0

    .line 1554
    .restart local v0       #layout:I
    :cond_4
    const v0, 0x209001e

    goto :goto_1
.end method
