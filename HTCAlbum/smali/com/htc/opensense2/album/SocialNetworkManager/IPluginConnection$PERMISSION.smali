.class public final enum Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;
.super Ljava/lang/Enum;
.source "IPluginConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PERMISSION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

.field public static final enum AUTHENTICATING:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

.field public static final enum DENIED:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

.field public static final enum EXPIRED:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

.field public static final enum GRANTED:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

.field public static final enum UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    const-string v1, "AUTHENTICATING"

    invoke-direct {v0, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->AUTHENTICATING:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    const-string v1, "DENIED"

    invoke-direct {v0, v1, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->DENIED:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    const-string v1, "GRANTED"

    invoke-direct {v0, v1, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->GRANTED:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->EXPIRED:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->AUTHENTICATING:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->DENIED:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->GRANTED:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->EXPIRED:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->$VALUES:[Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    return-object v0
.end method

.method public static values()[Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->$VALUES:[Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    invoke-virtual {v0}, [Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    return-object v0
.end method
