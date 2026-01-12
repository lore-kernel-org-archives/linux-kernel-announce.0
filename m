Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEACC2FFF89
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768249807; cv=none; b=d08XTZnQXa953K/ONhV4/n09kF1lkiyt/h9X16wxHGVVb5dwXVt+HJ2VN24PQXiy4bNDMCSt/SBIBFVceTjJ8DItUqhacRFrZNxYcavFZK2x3vsEdYzQbJg70b4ihPSq+FGSZdfg/96k6sxTZu8Xc5LFc02Yj55PfcsRSJq7MkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768249807; c=relaxed/simple;
	bh=rwwqbgrUXwftYPH4G0gK4agS9xGojc6XBFVtOc9vDow=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dN0Kw/iTYLact8XEp4ev5z7zg8lVovAsE/k1ZajYJdCe0Q8GwLGU3SAxb+m4TthmdZqP/iAH3a0NDS/zWBJjyKsKDbc/DGawuXczbCNbCjoujdCxMLQvrwM55V1LtJT+Jgz9Es6saPiMrKXxVKbrlN0LztvbNK0UIb/bqb0FhD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1768249807;
	bh=rwwqbgrUXwftYPH4G0gK4agS9xGojc6XBFVtOc9vDow=;
	h=Subject:From:To:Date:From;
	b=E30VPlReHR0viVS/QUbybKAz9BUmdsrKDk/EQUVdKV+w8+Zypw/EuyDUjBpzB8VA5
	 ungrcWCedh0B2vstUZYqKw/LWW2EJDBFqNBSAHxCkJX8Fj5MLrOsixCGptdABLAy8c
	 g0ohu6E1Ft9ZDFIbkOIStr6o3O/H9xbmfszTrlzs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 462C5C116D0
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:30:07 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4E5C9380CFD3
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:26:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 12 Jan 2026 20:26:40 +0000
Message-Id: <20260112202640.release-6.19-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.19-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.19-rc5/v6.18

Linux kernel version 6.19-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.19-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.19-rc5/v6.18

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.19-rc5/v6.19-rc4

