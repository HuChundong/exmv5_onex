.class Lcom/htc/dialog/HtcAlertController$AlertParams$4;
.super Landroid/widget/CursorAdapter;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dialog/HtcAlertController$AlertParams;->createListView(Lcom/htc/dialog/HtcAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;


# direct methods
.method constructor <init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1573
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1574
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->mLabelIndex:I

    .line 1575
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1578
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1579
    .local v0, text:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1580
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/dialog/HtcAlertController$AlertParams;->setListItemText(Landroid/view/View;Ljava/lang/CharSequence;)V
    invoke-static {v1, v0, v2}, Lcom/htc/dialog/HtcAlertController$AlertParams;->access$800(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1582
    :cond_0
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1586
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_1

    const v0, 0x2090021

    .line 1589
    .local v0, layout:I
    :goto_0
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    if-eqz v1, :cond_0

    .line 1590
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_2

    const v0, 0x2090022

    .line 1594
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 1586
    .end local v0           #layout:I
    :cond_1
    const v0, 0x209001d

    goto :goto_0

    .line 1590
    .restart local v0       #layout:I
    :cond_2
    const v0, 0x209001e

    goto :goto_1
.end method
