.class final enum Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;
.super Ljava/lang/Enum;
.source "AddressFinderServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ADDRESS_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

.field public static final enum COMPLETE:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

.field public static final enum RETRIEVING:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

.field public static final enum UNKNOWN:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->UNKNOWN:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    const-string v1, "RETRIEVING"

    invoke-direct {v0, v1, v3}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->RETRIEVING:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->COMPLETE:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    sget-object v1, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->UNKNOWN:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->RETRIEVING:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->COMPLETE:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->$VALUES:[Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    return-object v0
.end method

.method public static values()[Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->$VALUES:[Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    invoke-virtual {v0}, [Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    return-object v0
.end method
