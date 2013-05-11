.class Lcom/sprint/internal/SystemProperties$Prop;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/internal/SystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Prop"
.end annotation


# instance fields
.field canRead:Z

.field canWrite:Z

.field id:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "canRead"
    .parameter "canWrite"

    .prologue
    .line 923
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 924
    iput p1, p0, Lcom/sprint/internal/SystemProperties$Prop;->id:I

    .line 925
    iput-object p2, p0, Lcom/sprint/internal/SystemProperties$Prop;->name:Ljava/lang/String;

    .line 926
    iput-boolean p3, p0, Lcom/sprint/internal/SystemProperties$Prop;->canRead:Z

    .line 927
    iput-boolean p4, p0, Lcom/sprint/internal/SystemProperties$Prop;->canWrite:Z

    .line 928
    return-void
.end method

.method static getReadable(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 931
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 932
    sget-object v1, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/sprint/internal/SystemProperties$Prop;->id:I

    if-ne p0, v1, :cond_0

    .line 933
    sget-object v1, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/sprint/internal/SystemProperties$Prop;->canRead:Z

    .line 936
    :goto_1
    return v1

    .line 931
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 936
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getWritable(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 940
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 941
    sget-object v1, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/sprint/internal/SystemProperties$Prop;->id:I

    if-ne p0, v1, :cond_0

    .line 942
    sget-object v1, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/sprint/internal/SystemProperties$Prop;->canWrite:Z

    .line 945
    :goto_1
    return v1

    .line 940
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
