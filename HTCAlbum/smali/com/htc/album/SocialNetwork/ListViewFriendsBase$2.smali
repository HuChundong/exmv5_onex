.class Lcom/htc/album/SocialNetwork/ListViewFriendsBase$2;
.super Ljava/lang/Object;
.source "ListViewFriendsBase.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/ListViewFriendsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ListViewFriendsBase;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ListViewFriendsBase;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewFriendsBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewFriendsBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onListScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 246
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewFriendsBase;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onListScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 252
    return-void
.end method
