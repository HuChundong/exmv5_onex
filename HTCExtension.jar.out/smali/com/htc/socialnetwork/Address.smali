.class public Lcom/htc/socialnetwork/Address;
.super Ljava/lang/Object;
.source "Address.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/socialnetwork/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/socialnetwork/Address;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/socialnetwork/Address;->mAddress:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/socialnetwork/Address;->mType:Ljava/lang/String;

    .line 28
    return-void
.end method
