.class public final enum Lcom/android/camera/AutoDetectedScene;
.super Ljava/lang/Enum;
.source "AutoDetectedScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/AutoDetectedScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/AutoDetectedScene;

.field public static final enum Backlight:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Beauty:Lcom/android/camera/AutoDetectedScene;

.field public static final enum ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

.field public static final enum FiveShots:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Group:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Hdr:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Landscape:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Lowlight:Lcom/android/camera/AutoDetectedScene;

.field public static final enum LowlightPortrait:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Macro:Lcom/android/camera/AutoDetectedScene;

.field public static final enum None:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Normal:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Portrait:Lcom/android/camera/AutoDetectedScene;

.field public static final enum PortraitBacklight:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Snowscape:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Text:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Wdr:Lcom/android/camera/AutoDetectedScene;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "FiveShots"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->FiveShots:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Hdr"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Hdr:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Group"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Group:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "ContinuousBurst"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Wdr"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Wdr:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Beauty"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Beauty:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Normal"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Normal:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Landscape"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Landscape:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Macro"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Macro:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Snowscape"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Snowscape:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Lowlight"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Lowlight:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Backlight"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Backlight:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Portrait"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Portrait:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "LowlightPortrait"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->LowlightPortrait:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "PortraitBacklight"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->PortraitBacklight:Lcom/android/camera/AutoDetectedScene;

    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Text"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Text:Lcom/android/camera/AutoDetectedScene;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/camera/AutoDetectedScene;

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->FiveShots:Lcom/android/camera/AutoDetectedScene;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->Hdr:Lcom/android/camera/AutoDetectedScene;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->Group:Lcom/android/camera/AutoDetectedScene;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->Wdr:Lcom/android/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->Beauty:Lcom/android/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->Normal:Lcom/android/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->Landscape:Lcom/android/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->Macro:Lcom/android/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->Snowscape:Lcom/android/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->Lowlight:Lcom/android/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->Backlight:Lcom/android/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->Portrait:Lcom/android/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->LowlightPortrait:Lcom/android/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->PortraitBacklight:Lcom/android/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->Text:Lcom/android/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->$VALUES:[Lcom/android/camera/AutoDetectedScene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/AutoDetectedScene;
    .locals 1

    const-class v0, Lcom/android/camera/AutoDetectedScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AutoDetectedScene;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/AutoDetectedScene;
    .locals 1

    sget-object v0, Lcom/android/camera/AutoDetectedScene;->$VALUES:[Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v0}, [Lcom/android/camera/AutoDetectedScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/AutoDetectedScene;

    return-object v0
.end method
