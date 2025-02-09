Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEAE31E9B1A
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Feb 2025 21:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739137408; cv=none; b=m/0Ow0Hx5Q+g1stvrvLr4SbXTuId+FNr92w5U6v0Cx1kUOBznlC48iNfu4ZR2CwAheL+B1aHuPhf3EIyHnJpMu1u3sf7BeC+kj0/LOeUAOdN758yO4iGZbkgOsRwkm94rZ+2/wPwH8TgSmE+NdKdzL5izkuFl8a5hSBhGmhBJec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739137408; c=relaxed/simple;
	bh=6euaHX56FfIbGcuI+a4/Wr0nvQnDHtp074dkCPd1DH4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=fini6rebrIhTXdT4BNIB8EnDtMuZvgqN7kaA3gZYI79fBv6+hgKT/FjNN6KGXIxQlnPy7sy15EKO+r7UaqlkY8ErtJvEptkLWnySeAYWtm/9WkDDqFWmZxWmwunJtKmrtnu5WKEwvg/bwzGmFW4PQk+aVsvcu/ZPWn+TRK+v9c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1739137408;
	bh=6euaHX56FfIbGcuI+a4/Wr0nvQnDHtp074dkCPd1DH4=;
	h=Subject:From:To:Date:From;
	b=Y6P2faNheMGGqa58LJAjsAO82kMV8jbyYzXVhggoMSZW0LFVE+GniJJG/ePwnxr1P
	 Vb7uuUnsUpyP8DiVz6wESbgVXH2pVHpWlidCQS+DllkeYg75H3La95Vi+8Q71fkXX5
	 0qqfpok5xTmL0lyDXxxZn924xbjfMOibWIMSbGGA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41BF5C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Feb 2025 21:43:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1F99380AAEB
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Feb 2025 21:43:57 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 09 Feb 2025 21:43:56 +0000
Message-Id: <20250209214356.release-6.14-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.14-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.14-rc2/v6.13

Linux kernel version 6.14-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.14-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.14-rc2/v6.13

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.14-rc2/v6.14-rc1

