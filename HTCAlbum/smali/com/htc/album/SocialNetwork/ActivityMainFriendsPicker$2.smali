.class Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$2;
.super Ljava/lang/Object;
.source "ActivityMainFriendsPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->initPageComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->access$100(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    move-result-object v0

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onConfirm()V

    .line 181
    return-void
.end method
