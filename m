Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96ED81E49E
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729172744; cv=none; b=arif5HsBdEeTejOuq5muDF4oq/xFJ5+WmonuwgmfxD+S//eFogJRSPuhEH3tV7guVM4i99xCXzAlYNA9yTMSi54WbrY9lLMVVXAWHmxSlYfvo0ayDl5PqXkr1kdvhQ9ZkwcoHiluNXIQeDEqRalj0+VtGjCJc5aXCURg8E4ebbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729172744; c=relaxed/simple;
	bh=3RzgApkBlsubI8u0KEcv32n5QJSnIOjBtNHkid5ZZfI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=AsVogmyX5K533c4q1C6m7Gqgd6CDtaoBc1bjn6bcMwfoivy+8p3C0bNcQTgsSYtxO0sWFg8x1NsveLOW2rgK9GDz6Za78cANuFM9sYs+phrhdLmcr64zWFI6FA7eA9DBk/D20VnzWy3Dzy6EVUNWnpUqDKoMqEE/qJLLfkHaVic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1729172744;
	bh=3RzgApkBlsubI8u0KEcv32n5QJSnIOjBtNHkid5ZZfI=;
	h=Subject:From:To:Date:From;
	b=evtCXsiMQcSBn9JKCJoZfs/W7RvIuQ5kvq0QnEJhUqPU1H/i6IQ3THSe3jEDm5jMD
	 2J2rrdDVpUT4PceozP5N8w2KbrhK69Uad4WB6SnA4W62MO/B3OEUwsqTo6wP3xA6ND
	 xbzQFwAWZZ4JXRtUp/RbTWBLXXwMAZraMBOy0YFE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38896C4CEC7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:45:44 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B5D643809A8A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:45:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 17 Oct 2024 13:45:49 +0000
Message-Id: <20241017134549.release-6.11.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.4.xz

Linux kernel version 6.11.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.11.4/v6.11.3

