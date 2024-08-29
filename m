Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F18846B91
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 Aug 2024 15:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724946653; cv=none; b=HHWG5zn1kEC2klDp1YNOVi+gHYlPzgPCLSllZMp6CV5c7jb3dGcgseX0BoksRVTt3zNWYPCKmNDknVgkgvuvHkGjsNe02dUdR3ylWhsdBjZMYW0YOmJvUaVIU9qWX1uKOIY2465zpprlET1dO1urb5j3XPbJp8P3F8dfZu7Cl1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724946653; c=relaxed/simple;
	bh=7fRtumDexPVQ6Tc4AO6GCdZUC2plUCYyps9GN1KE/0A=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HJJLC5C6fIAxZMXZ0VEc6UuJr8IQUxc6TnwhOeKZgS/dLQAXdj8CcFUY8ikruv/sVoMRz0DtM8aDPj7OBKwr5Or+hweP/UVUyB/voIkJdCZuDtO1ifrrpKHCLT3NLvUgrwlMCBX9tVRKIVZoF+vhb96EBnSMh6S8yXfiAYQKi7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1724946653;
	bh=7fRtumDexPVQ6Tc4AO6GCdZUC2plUCYyps9GN1KE/0A=;
	h=Subject:From:To:Date:From;
	b=faoJp+xZDoqWTsuPVYbyut/InlaXOuR06J/4noGqqH+Uk+en0LmhH73zF1az3ULJi
	 +oVnyK2WFcqWeeOq/FhyYMVM4FzOs0yg0viLrpvamXf+MXcLcLun6NLKDUL8JvoUrF
	 aA0jDTZf0rO5J2OyR/Q9MFG7ZFmaIaRGq5OdTv5E=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65379C4CEC2
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 Aug 2024 15:50:53 +0000 (UTC)
Received: from ip-10-30-226-235.us-west-2.compute.internal (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 00A453822D6A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 Aug 2024 15:50:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.48 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 29 Aug 2024 15:50:54 +0000
Message-Id: <20240829155054.release-6.6.48@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.48
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.48.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.48.xz

Linux kernel version 6.6.48 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.48.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.48.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.48.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.48/v6.6.47

