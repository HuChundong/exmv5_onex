.class Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$3;
.super Ljava/lang/Object;
.source "MfFragmentMainFriendBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$3;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$3;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onActionBarBackPressed()V

    .line 494
    return-void
.end method
