.class Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;
.super Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;
.source "ListViewFriendsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/ListViewFriendsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewContactTag"
.end annotation


# instance fields
.field public mIsVisible:Z

.field public mText:Ljava/lang/String;

.field public mViewBackground:Lcom/htc/widget/HtcListItemTileImage;

.field public mViewChkBox:Lcom/htc/widget/HtcCheckBox;

.field public mViewImage:Lcom/htc/widget/HtcListItemTileImage;

.field public mViewText:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ListViewFriendsBase;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ListViewFriendsBase;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 463
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->this$0:Lcom/htc/album/SocialNetwork/ListViewFriendsBase;

    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriendsBase;)V

    .line 465
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewText:Lcom/htc/widget/HtcListItem2LineText;

    .line 466
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewBackground:Lcom/htc/widget/HtcListItemTileImage;

    .line 467
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewImage:Lcom/htc/widget/HtcListItemTileImage;

    .line 468
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewChkBox:Lcom/htc/widget/HtcCheckBox;

    .line 473
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mText:Ljava/lang/String;

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mIsVisible:Z

    return-void
.end method
