Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3906025557
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Nov 2025 13:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762090865; cv=none; b=qz2SW6manborrZcW6+JNcxHwGGfBN6p2nLoclGiqokI5tkUzmx9t7MFdQ0sFfRHS1LFV0l8FjGri86rdps7zdGaN6RcrjSJIINYim5JQNAwGdL5EfoTGOcKefdQNo8KDAgK1MGiovQHP8CMcpcqQCWYfTKG20nIHobLsU7/C7XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762090865; c=relaxed/simple;
	bh=IPoKLBmAAPeaJ1QamtCcDMoWf5VHFg/gqrFPXpsza4E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=agMdXCDnNz+TUBJICDNvxRALxh6jEGetMBVTVwvGFQAHAMbq0Z3vlA22i7G3ZbT/WjeQufu7qNr8NPRTJJdMvF1ZNmGFK8i0+4ffsBSW8EOAhxXDzCgZh48Fy8YT+JCVDYt8YahfXuiLjB8Txb32bpPDyGr7brHWZmCGsA8fJXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1762090865;
	bh=IPoKLBmAAPeaJ1QamtCcDMoWf5VHFg/gqrFPXpsza4E=;
	h=Subject:From:To:Date:From;
	b=Y3agglzJdSsFLNhQ5l1afk2maxYstwlOzhUcydwnPkDNB8CoU5z/mbIlntI9uNsvK
	 Hvd6JHsNKutiC22A7qFlvEf2JWQgeZvQ5tZOGMxhlFQ4zXtUGfIAkYaQadWh5CGSfa
	 cI1lYLwRlYKROXW8WunsjIHLTCUXX8ekTCdRJTmI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6C75C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Nov 2025 13:41:03 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE6D83809A00
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Nov 2025 13:40:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 02 Nov 2025 13:40:38 +0000
Message-Id: <20251102134038.release-6.17.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.7.xz

Linux kernel version 6.17.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.17.7/v6.17.6

