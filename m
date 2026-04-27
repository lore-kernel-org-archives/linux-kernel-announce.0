Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18D53E6DF3
	for <linux-kernel-announce@vger.kernel.org>; Mon, 27 Apr 2026 17:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777312567; cv=none; b=J4Wa+LIYVlEm9/Ic7iMjW9r4SK833A0ub1CDXxS0AAr0jmQkrkez/vZXuZWDW9R9olxPF8iWA80UAaGhGYpvN15AU5J2PZr/r5SwadQSxuFx+rlQhmDafjTu9fYHnFSjhnKbLz3MmkUXR905lA1w2qI3OvO/WjoQX0/AC/SdGho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777312567; c=relaxed/simple;
	bh=Jeo5Vq89YGl2CM/pUJfPBgagrUxVCa6//pOA14DLzmM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UvZPhDNqmsZiCF6WUaqLeXhrOwzK8vLPxoZdamocWxXoSux/4nQkCtTOGz7QbSXuYtTC9hEc3ouLvtFI5bDDSaLx3vUlyuP5UwbJQS/ykXFleg7kSr16N2NWWRiPZ9bE4LgOJlhTLjLeGUWXNxx3tlY1PcyrkcnqaUypwRCAAMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1777312567;
	bh=Jeo5Vq89YGl2CM/pUJfPBgagrUxVCa6//pOA14DLzmM=;
	h=Subject:From:To:Date:From;
	b=VYNbZVHLSn1mFmTWo4FO71QhJTCkBuzSzNBtgLrbUm+IqYHNC3ewr23bxUxSV+wHL
	 4xBTyqKKFF8hMT81hTmkxkJ31p+Gqft2yYtkDejaptNM8zvP3xjSQqxPLzEDsRJpuy
	 S2nhrdChSGIL8Ctfk75NYg2lS+VfO/rne6vqjTAg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C7A0C2BCC4
	for <linux-kernel-announce@vger.kernel.org>; Mon, 27 Apr 2026 17:56:07 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3FC6F3811A74
	for <linux-kernel-announce@vger.kernel.org>; Mon, 27 Apr 2026 17:55:26 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.136 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 27 Apr 2026 17:55:25 +0000
Message-Id: <20260427175525.release-6.6.136@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.136
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.136.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.136.xz

Linux kernel version 6.6.136 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.136.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.136.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.136.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.136/v6.6.135

