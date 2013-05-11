.class public Lcom/htc/opensense/plugin/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# instance fields
.field public id:I

.field public name:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "version"
    .parameter "name"
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/htc/opensense/plugin/Feature;->id:I

    .line 44
    iput p2, p0, Lcom/htc/opensense/plugin/Feature;->version:I

    .line 45
    iput-object p3, p0, Lcom/htc/opensense/plugin/Feature;->name:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/htc/opensense/plugin/Feature;->type:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/htc/opensense/plugin/Feature;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/opensense/plugin/Feature;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/opensense/plugin/Feature;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/opensense/plugin/Feature;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/opensense/plugin/Feature;->version:I

    return v0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    iput p1, p0, Lcom/htc/opensense/plugin/Feature;->id:I

    .line 97
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/opensense/plugin/Feature;->name:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/opensense/plugin/Feature;->type:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    iput p1, p0, Lcom/htc/opensense/plugin/Feature;->version:I

    .line 107
    return-void
.end method
