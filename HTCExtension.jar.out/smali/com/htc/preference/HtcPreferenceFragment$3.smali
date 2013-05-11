.class Lcom/htc/preference/HtcPreferenceFragment$3;
.super Ljava/lang/Object;
.source "HtcPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/preference/HtcPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceFragment$3;->this$0:Lcom/htc/preference/HtcPreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 438
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceFragment$3;->this$0:Lcom/htc/preference/HtcPreferenceFragment;

    #getter for: Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/htc/preference/HtcPreferenceFragment;->access$100(Lcom/htc/preference/HtcPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 439
    .local v0, selectedItem:Ljava/lang/Object;
    instance-of v2, v0, Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceFragment$3;->this$0:Lcom/htc/preference/HtcPreferenceFragment;

    #getter for: Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/htc/preference/HtcPreferenceFragment;->access$100(Lcom/htc/preference/HtcPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 441
    .local v1, selectedView:Landroid/view/View;
    check-cast v0, Lcom/htc/preference/HtcPreference;

    .end local v0           #selectedItem:Ljava/lang/Object;
    invoke-virtual {v0, v1, p2, p3}, Lcom/htc/preference/HtcPreference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 444
    .end local v1           #selectedView:Landroid/view/View;
    :goto_0
    return v2

    .restart local v0       #selectedItem:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
