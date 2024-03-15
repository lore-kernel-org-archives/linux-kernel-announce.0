Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D17FC0E
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710530742; cv=none; b=rB4dLIkezKhZM91131qrhagNUAL82rSXqS8zMxINS+KGiefcrGmTSE3hXA4xcoL61DsN9C32xMBDCPS/HmsWm6uwThvTWTxmkrmKJ1gM+zBmYxyHx5Wlx7zlpyQat3J2Jo817qhC9NKc2kH9iZhMfhP9K/kty+rjR63x73Oy7UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710530742; c=relaxed/simple;
	bh=iOXTh62e3TQEWeG8bWtOIrDmUW8yrH3dkTTOXAUfhPQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JE/0PQuJ+l6WKA8fB2TJkrymcAAgO9qBUqLHRy9KSAsUravVAf0r7OXwEWSJ/pySSXaKmsBElYcEaEvOBmBM6Fb8GEq6bKLKTZJQ4qbCEfjPv+L3H5uH3WQw+5eDlKSJVQlo0gZtEHs+wtlR8BVvImwXe8ZuIEFubwb0wgaCiIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1710530742;
	bh=iOXTh62e3TQEWeG8bWtOIrDmUW8yrH3dkTTOXAUfhPQ=;
	h=Subject:From:To:Date:From;
	b=SfheNS4aJsCcBWwI63oaaVjMae9DHK1iq9jLOesXISCBDV3N0ZAoAk4g3eThWslUc
	 3t3VFn2raYWuGH6BIcJIc7q6rGyAduStMZVp/OaKa7j+4a7Vo+aiD0LxY5ASEKq+x+
	 z5WJVMRNjRc/dz2ia3X6lRiGDqgU5GPJSNv3+XAI=
Received: by smtp.kernel.org (Postfix) with ESMTPS id B807AC43390
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:25:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A46C5D95060
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:25:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.22 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Mar 2024 19:25:41 +0000
Message-Id: <20240315192541.release-6.6.22@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.22
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.22.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.22.xz

Linux kernel version 6.6.22 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.22.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.22.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.22.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.22/v6.6.21

