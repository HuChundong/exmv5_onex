.class Lcom/htc/album/SocialNetwork/MfFragmentMainFriends$1;
.super Ljava/lang/Object;
.source "MfFragmentMainFriends.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->setButtonOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends$1;->this$0:Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends$1;->this$0:Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onButtonClickLogin()V

    .line 568
    return-void
.end method
