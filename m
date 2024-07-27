Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D11381D4
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 09:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722071156; cv=none; b=ZcrnvoNJ3ALpEXntqaf1/zGtztGOnM1Fh7TUhgY2Av/uLikznrA3hTJqt1mqOq+syyHFAQZ83QGHbHAbzeDjzIfom5jVWS3EXglwGN12VhD48VoBUISXfcVroyyAr95rMBr/GC1jnvzGl50DhF5G8D+s2hOjX/DTX1I9XnzQNxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722071156; c=relaxed/simple;
	bh=plWlzj7OUV7AAY8i5QuX3bKtUsGw2joCyK5zJzd0qVs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GthFhB4F88z6lmjEX1BuJgAbfynwZz0gBna03l94kqR9f0QeUW52ikO/dgQi/v0nBFg9KU0rpSJvz2RJuAaF63aefWGoo3Xre0c9YKMA2K6TTZ64OYTxZs3twcg5sTxgWcIKEvODWXFQ4Qth3PuUtX2J/dovb+sQEaV2bHN6/aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1722071156;
	bh=plWlzj7OUV7AAY8i5QuX3bKtUsGw2joCyK5zJzd0qVs=;
	h=Subject:From:To:Date:From;
	b=vnhmsaVilnCHJXmntOVTCpxl2TkF4+qmcvAsRXrLjfjyFRDxHYRDxKkRGfGqy4Iqi
	 MnLfX/11N0sXnF/zW0fD1EjyxF5Omb4NB8fnY63yeXoS4lKAxUuCN3+UrhkvGA30fR
	 sFj1LQOeFcLtS34pAWwHwxGIG4tG5LqCAaog2VXw=
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6691C32781
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 09:05:56 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A4846C4333B
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 09:05:56 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.164 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Jul 2024 09:05:56 +0000
Message-Id: <20240727090556.release-5.15.164@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.164
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.164.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.164.xz

Linux kernel version 5.15.164 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.164.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.164.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.164.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.164/v5.15.163

