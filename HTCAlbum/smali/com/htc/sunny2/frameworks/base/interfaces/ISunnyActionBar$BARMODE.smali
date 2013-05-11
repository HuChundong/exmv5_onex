.class public final enum Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;
.super Ljava/lang/Enum;
.source "ISunnyActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BARMODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

.field public static final enum BARMODE_CAR_FOLDER:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

.field public static final enum BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

.field public static final enum BARMODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

.field public static final enum BARMODE_UNKNOWN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    const-string v1, "BARMODE_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_UNKNOWN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    const-string v1, "BARMODE_STANDARD"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    const-string v1, "BARMODE_CAR_GRID"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    const-string v1, "BARMODE_CAR_FOLDER"

    invoke-direct {v0, v1, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_FOLDER:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_UNKNOWN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_FOLDER:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->$VALUES:[Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->$VALUES:[Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    invoke-virtual {v0}, [Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    return-object v0
.end method
