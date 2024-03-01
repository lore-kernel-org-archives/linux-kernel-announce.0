Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F5669E1C
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709295942; cv=none; b=TzSZiu6Y6qYe9s79K4/eZOsIX1SSMGq4Ah9WTnRa/j1LZc0miILFv4V6D3VoxjCLCqbMlwCQSrbMF+ThorkAKDlDBBxDO9+Ywj/2DyH56NPr9uwhHHC3c1MVpNX8/vfkNm7e4bzp9jRGv0cqANuRs9sr5z8wY1sN+bbGUb2NSNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709295942; c=relaxed/simple;
	bh=xUcerD1ollkyEOLIeT+K+J22g4fNddIV+FmJxaPAl+8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QLEYyHZkKdBDgKl9lDX9CSrrumFUmBTfTiYEfyAtSUSnKqEW0iHc/Cxke6up2xfGqf53mjXth6TEBczkx8sqQY6ydKUkTJVtcaA7W2dC2sGUzJdUeVXmrL3f10nzczT/gUCCs50XW7MaP+08UbkUm0VQfRbPsB8H63YZ9V6T+s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709295942;
	bh=xUcerD1ollkyEOLIeT+K+J22g4fNddIV+FmJxaPAl+8=;
	h=Subject:From:To:Date:From;
	b=jIUPvb1cic01pyjQP8mMHEaTB2g8WESV5gaqS/G1tBEF/DJKwebf8koAikkYXjSWT
	 0o3LuJ9g3Xi/wX3gVfwZAvjD08Oelf1V3fVxP1CgjG/PMX1LGsFpJTJiZNFxXQVNyc
	 kXJIqxz6BGqnrZzCVQsYxjaZOQ0DMS6S8kWgX7I4=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5010FC433F1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:25:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 38FCED84BBA
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:25:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.211 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Mar 2024 12:25:42 +0000
Message-Id: <20240301122542.release-5.10.211@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.211
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.211.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.211.xz

Linux kernel version 5.10.211 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.211.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.211.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.211.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.211/v5.10.210

