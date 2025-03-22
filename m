Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66131D63E4
	for <linux-kernel-announce@vger.kernel.org>; Sat, 22 Mar 2025 20:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742674819; cv=none; b=SaExYp/nRC1CpezkTzySdo/qEqhw6rPv5oMz3C0NABMyAK4tGZrKp/D/IN6lujDSTpbhcP9qLjRUUdwkE6Akq9TATAxSy3la+La0y+GfVw3BoEv7bdi+RegPYnifm/PUp2OwonpeDX6zf8gjiNpbp66jXbwqNCN1xF7a3UgMqxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742674819; c=relaxed/simple;
	bh=Co7kaiRN53r7PV6azRSuQxrWcAfAOjWtp1lvzCzhVxw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=eoofs7NWqCKLixZP+S47yCZYvHdsEahYfk2NbSJe3TaChqfsnYPlkdXWGa8rCFVkqTT+kikFdT7O+PITE6C9wUmBFhb1YLPeLmws7galoaNLShJd/UNmJ4Qf2UdpVynNKzBHSA5cKDKPP4+NyIy/dVZ/HKvEwSS8wEda0gbG9sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1742674819;
	bh=Co7kaiRN53r7PV6azRSuQxrWcAfAOjWtp1lvzCzhVxw=;
	h=Subject:From:To:Date:From;
	b=sO09IR0bicJM3ikYqTlpmT1HT7Q4IaD/qv6xxNbJbgIPDSldIwBk1VtS7dNJFAKdT
	 lMMrYdveuUlTFW5/ixKufpI65mLNYWkm0B54AG6383ZXA1b8COj9fJXLRLArkBQ5Zo
	 DIaOwEVHsAkky3j8Nupu6/Lf4dxaDj4T2bvHD+XU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5441BC4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Sat, 22 Mar 2025 20:20:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 77D80380665A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 22 Mar 2025 20:20:56 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 22 Mar 2025 20:20:54 +0000
Message-Id: <20250322202054.release-6.13.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.8.xz

Linux kernel version 6.13.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.13.8/v6.13.7

