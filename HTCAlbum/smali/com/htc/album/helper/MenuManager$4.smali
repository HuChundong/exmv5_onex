.class Lcom/htc/album/helper/MenuManager$4;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

.field final synthetic val$clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

.field final synthetic val$shareViaAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/widget/HtcShareViaMultipleAdapter;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1829
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$4;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$4;->val$shareViaAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$4;->val$adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$4;->val$clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1832
    const/4 v0, -0x1

    .line 1833
    .local v0, index:I
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$4;->val$shareViaAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    if-eqz v2, :cond_0

    .line 1834
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$4;->val$shareViaAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v2, p2}, Lcom/htc/widget/HtcShareViaMultipleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1835
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$4;->val$adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->findShareItemIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    .line 1838
    .end local v1           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$4;->val$clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1840
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MenuManager][menuIconListDialog] index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$4;->val$clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$4;->val$adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-interface {v2, p1, v3, v0}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;->onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    .line 1843
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1844
    return-void
.end method
