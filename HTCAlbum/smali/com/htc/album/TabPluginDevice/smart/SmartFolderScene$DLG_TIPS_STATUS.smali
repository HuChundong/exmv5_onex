.class final enum Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;
.super Ljava/lang/Enum;
.source "SmartFolderScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DLG_TIPS_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

.field public static final enum FINISHED:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

.field public static final enum RUNNING:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

.field public static final enum UNKNOW:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->UNKNOW:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->RUNNING:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->FINISHED:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    sget-object v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->UNKNOW:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->RUNNING:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->FINISHED:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->$VALUES:[Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;
    .locals 1
    .parameter "name"

    .prologue
    .line 72
    const-class v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->$VALUES:[Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    invoke-virtual {v0}, [Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    return-object v0
.end method
