Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB4E19DF8B
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 13:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729605341; cv=none; b=XpoFnuz+qA1gNWa4QwJg1zstnVCwNM6SSqXQZeG/n4AxZkSZ3uDm+0BSVVMy5lnjsmK1vDGBGwRio56oEpb5nSiI16a18Ibu8YEP/p5+Me4gcLe025HKFzh6BmChBLZ4BSh/XFzNKGjsoHDy6asvmxXij2/Gn1uzWFsMpxeHqnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729605341; c=relaxed/simple;
	bh=BBh+ZGLikVO9kIlHlyn+CQ/FJ4STGmSNjxZgihPqzyA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Q54MN6j7Ee0AEw5cfOGmRqLPw/eP66Z9P/99yk33k4ItI6lLfst1KJAMynxLeNFnpo5vTWPLedxpbHRiyToMwMp2EbBdefcDVDBtvLiIZmKskC7mf96VeW7l0eBV60SRNJWVu+O7GyQAuCFKt6AmoYIeo67Zhb0VTNUVTuchsMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1729605341;
	bh=BBh+ZGLikVO9kIlHlyn+CQ/FJ4STGmSNjxZgihPqzyA=;
	h=Subject:From:To:Date:From;
	b=Ciak7oIBnZ4EW+bMg/cfM1KNPs9IaI58hSNUSr6k557a/bYSgW5YSShmwxFkIpEs0
	 OUUhKVlnE0dFbPJOB2VSadhhs22Bljp7ASR+L9QhliZRjmih37Ibg32i+cTKO8mORe
	 jqvQxf7DsfiX8HXLq8mbtFzVpQiBLOinQlHX0ZbQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B66ADC4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 13:55:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33EAA3822D22
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 13:55:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.169 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 22 Oct 2024 13:55:46 +0000
Message-Id: <20241022135546.release-5.15.169@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.169
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.169.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.169.xz

Linux kernel version 5.15.169 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.169.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.169.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.169.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.169/v5.15.168

