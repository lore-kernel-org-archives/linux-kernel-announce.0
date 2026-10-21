Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792572948;
	b=L7q0Q8mJRMY0QvID/dpJ1/QrSaViyv4dAckq2zJR983c5y3WIbIWySQ4qtqRQsLmAtAc
	 MOgsz5ZNVZEddEN0xPeL9NGry+s7FRli/N61pbluMimkppz7vetgK5InE7biv+vf9pTJg
	 RVq9fPt3rwVxHXM6AUQZwO+ZWY7HyMVbI2EkaMbqMabUBw2pTDwXWnC9z743+ODJTi9Z/
	 Qvx8kdY6tR48bejw3TEcdko6Yzt6urz8vJ/TTCOEBsgp3ocR2LOW6l3rvEbMRe1SrAoLN
	 wTqef46i8HhqxaP4VBcSb6lplhMXVFyhw2zFrqQDx0mLc4UXfyY2ytnXW3KBfLnAJsw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792572948;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=X6ybyA/Z/NO8mGX+ut0RyRyAzFxXn/w/v/0TjN/UKh4=;
	b=4BAu6Qd3dnAHp8xm73rtydLzxD26MyF/hGz8b7K2ZNeiA2xTwYDzZfefzRjhsOwTBBjj
	 968r7wbw1rbbxoRc35M/jkU9jcgb9cQPkRLAk1vV2TbT21pdO1imqCy53dxsSqF9ENfQq
	 yGrhZsak4VNcKhGhLLYwX7DV57crfhLfK4cHUqrv6QPDiVCoFSWvE4AOhN8H+Rfz+/bpn
	 6hpTAyDcMrzjDTVIvFUftGfT1jCaWyDUnBcKmaJbk//a0/uXaan6ecT2JZdRPl+pTYg8T
	 H+LQWUe0mWfs59LbyTorU8WP1LYla7SRzVUJzjyf2g1XGxaDF5UbMRDsUT0+v9iFj+w==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A2C606A321
	for <linux-kernel-announce@vger.kernel.org>; Wed, 21 Oct 2026 08:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1792572948;
	bh=X6ybyA/Z/NO8mGX+ut0RyRyAzFxXn/w/v/0TjN/UKh4=;
	h=Subject:From:To:Date;
	b=K8dxq2Z/n2fNV09Llq9JFdnqOTkFKBdlNhD6ucgw/W1RdLGI0KEsYBGWEzMAePCOQ
	 aauxa/PbCEVmoNGrYjyeX8kn9eA452kROVtJIJwMlu+L8u7Ksw3qGp2d3Bo/mDQocA
	 9loqdeHeHJ3RzBJGeSnBUdmFlLiWQ2nXgaRGGCA/A5F7ZGOTYlxFM86sU/8r9CsXPB
	 Y1DOhmCBeqH5zaHGXlwSb4/+Om4XC1Mg8b8Gg+Q61lpwRMkGioRCINUdvZpu5OPcUc
	 I21AjXuNYOnfcOGTaulJUqs9FTTZaRhqYzaXSyUFEzTdHNli4XLtiEicMMdCUG5Iq7
	 on97oL+GvV5dg==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 067981F000CB
	for <linux-kernel-announce@vger.kernel.org>; Wed, 21 Oct 2026 08:55:48 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F16F73809A12
	for <linux-kernel-announce@vger.kernel.org>; Wed, 21 Oct 2026 08:55:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.58 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 21 Oct 2026 08:55:46 +0000
Message-Id: <20261021085546.release-6.18.58@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.58
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.58.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.58.xz

Linux kernel version 6.18.58 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.58.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.58.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.58.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.58/v6.18.57

