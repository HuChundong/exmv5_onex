.class public final enum Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;
.super Ljava/lang/Enum;
.source "MfFragmentMainFriendBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "LAYOUT_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

.field public static final enum LIST:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

.field public static final enum LOADING:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

.field public static final enum LOGIN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

.field public static final enum UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOGIN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LIST:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOADING:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOGIN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LIST:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOADING:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->$VALUES:[Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;
    .locals 1
    .parameter "name"

    .prologue
    .line 66
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    return-object v0
.end method

.method public static values()[Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->$VALUES:[Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    invoke-virtual {v0}, [Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    return-object v0
.end method
