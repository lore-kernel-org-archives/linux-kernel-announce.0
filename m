Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792572950;
	b=xYCEhehw6+t7hFtQtqRSQQKLEfhSE4T7ZxVBSxsUQPFGV+aw2p4OCxSOXgb0l4yeEZGh
	 kHbQvpyhejP6UFQK03Uq3e8mv5eUp6SqWoP7O53DlU6Pz9YMAD52EI4LRhJqWJQdzMD9P
	 5WhIZgn4KjV1tg8zkgGXFBeoOyrL98A34ffCfhZr3h2XoJOF/rMlQbRuniRuKfH8JZZxd
	 lWJ/k22toBzNxMUt1IgE/Vr+z5vCsho98qay9B3q9wdOe5TUDYv8nUkrSNBjxaFUePZzI
	 dqNNCUn33X/EVvo62V4sIphXekuQiatyFJEJ27VxkU01HsMZMcr7uxDRl+tCCvAbBvg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792572950;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=RwIvEELOt0un7o51TlnUQm9JimnnHp5d1Jdv1unNbdc=;
	b=uY1wVqfF6hlUSvL39ZCsJWt1k3LVZaOHu7KDlz+1aClIAa9bTo8YxYMvbJ0Xbvv+15R0
	 t1NY+1dmdlRqm3ypKYVcTPmAezjLdywiKz9+q+Oa/u3KGLSVtMDp6h78J6rGqx+A0mrw5
	 Fh88hq6cNhu/P2F5HzvKkEAx3sCcLHinNS8gLQcyGENr+d6O69lQjEm+DCSXWjIqcsE0W
	 AiQZlYSU9m4GYE3z9Eg2JS4u0scu2FysFFt9dH1ISoQgMahGXmotzudpvceDosYgHELmO
	 mn7md/17GHQBOLNg4k6rcXqlAobvVAwX2efdZJUqR9rbg/V568IAUVYJZeQDRs0kWSw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B79606A326
	for <linux-kernel-announce@vger.kernel.org>; Wed, 21 Oct 2026 08:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1792572950;
	bh=RwIvEELOt0un7o51TlnUQm9JimnnHp5d1Jdv1unNbdc=;
	h=Subject:From:To:Date;
	b=viarFw/FedPVFzoNFQKhtJd88m5EyDElfeAKUn4FpsdSMyFUGfowKCkJ3sxK+S9tJ
	 hOVt5dSKpPaD3pkmPIzmosMpxFG4q+3zXATet4bTjpx6tDZn+cu4Gazxmqoqyw7Fwi
	 D0xjs/QpZ81xp9fVJXvEWBt+ftWUBA+AxtQUbniNioxVAhqFbZmuk9PPtE674MUoYu
	 tMSFknT3igynMr+Iq3uCRr8AuK3ZCF5uGIHnKbLPvMmNS6DJCZTKViB+botOJZDYqJ
	 obUr2ITiMw/KUikWLw7UwdsESTkXV7q0VZ0FSXYdrj8i6M1nokFN2Lm51b8JpmJ+w1
	 6rukJkqMCTtpA==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80A711F000CA
	for <linux-kernel-announce@vger.kernel.org>; Wed, 21 Oct 2026 08:55:49 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 772F23809A12
	for <linux-kernel-announce@vger.kernel.org>; Wed, 21 Oct 2026 08:55:49 +0000 (UTC)
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
Subject: Linux kernel 6.12.114 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 21 Oct 2026 08:55:47 +0000
Message-Id: <20261021085547.release-6.12.114@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.114
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.114.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.114.xz

Linux kernel version 6.12.114 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.114.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.114.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.114.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.114/v6.12.113

