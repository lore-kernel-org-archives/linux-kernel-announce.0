Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48314176ADB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 22 Dec 2024 22:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734906630; cv=none; b=f55k6//WaK8f1Cb33omHC7gZvZgyUVvvAmFgCNNa6CP2iSdp0khfGZn84poCmPSaCo56Z6lR1Px1r8pH+f6/6M9Bnhaxf/Hre/Pwr48lzsJjcNFVnyQJrvVp903axP+zj/0f0BSXEHzspQGXgzgn7GllRUhAwuAH/jX1t1E0U0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734906630; c=relaxed/simple;
	bh=9pfZ6ER25hN2ahaHYYqZ4e8/CCHkDy4VHjanrmFBV0g=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ir2WVU9e3oygrCIhTGoIEF0EzcX499WyjWHVN4Jrtw//o75kiXEmdknr+RCaRc4jmbx7DGW9bJx/o+km1dgIbZLASunIzxewtS88DuP6FmAo+Xs8RZmVVYYnHkdJ4rZble5XewVBJ+f5eEP67YP9LSrDJp0SwlgSp9aYX+bsMxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734906630;
	bh=9pfZ6ER25hN2ahaHYYqZ4e8/CCHkDy4VHjanrmFBV0g=;
	h=Subject:From:To:Date:From;
	b=lxudMoc26wDhijzUbNB66n2wd7YZYFSJteJhePSW5bfqBSXXvqH3dihdWioEfOUPC
	 FNL8L9iz4LAX6rVYQ2LMkMvhZXU6WcTar7vCZsSA+5B6YSVjRt8bxanlHfX2LHlALP
	 /djY4BMjlMmQnz/WZyoP6tAq2CzH/q0NjDkLb3S0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2120C4CECD
	for <linux-kernel-announce@vger.kernel.org>; Sun, 22 Dec 2024 22:30:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 37C75380A955
	for <linux-kernel-announce@vger.kernel.org>; Sun, 22 Dec 2024 22:30:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 22 Dec 2024 22:30:47 +0000
Message-Id: <20241222223047.release-6.13-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.13-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.13-rc4/v6.12

Linux kernel version 6.13-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.13-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.13-rc4/v6.12

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.13-rc4/v6.13-rc3

