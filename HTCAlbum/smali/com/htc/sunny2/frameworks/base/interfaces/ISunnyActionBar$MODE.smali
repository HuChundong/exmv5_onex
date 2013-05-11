.class public final enum Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;
.super Ljava/lang/Enum;
.source "ISunnyActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

.field public static final enum MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

.field public static final enum MODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

.field public static final enum MODE_UNKNOWN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    const-string v1, "MODE_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_UNKNOWN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    const-string v1, "MODE_STANDARD"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    const-string v1, "MODE_FULLSCREEN"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_UNKNOWN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->$VALUES:[Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;
    .locals 1
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->$VALUES:[Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-virtual {v0}, [Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    return-object v0
.end method
