.class public Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;
.super Ljava/lang/Object;
.source "ListViewFriendsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/ListViewFriendsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewTag"
.end annotation


# instance fields
.field public mIndex:I

.field public mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ListViewFriendsBase;


# direct methods
.method public constructor <init>(Lcom/htc/album/SocialNetwork/ListViewFriendsBase;)V
    .locals 1
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;->this$0:Lcom/htc/album/SocialNetwork/ListViewFriendsBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;->mIndex:I

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;->mTag:Ljava/lang/String;

    return-void
.end method
